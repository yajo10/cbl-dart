import 'package:cbl_ffi/cbl_ffi.dart';
import 'package:collection/collection.dart';

import '../../support/utils.dart';

/// The mechanism by which the the serialized value will be transported.
enum SerializationTarget {
  /// The serialized value will be sent through a isolate port.
  isolatePort,

  /// The serialized value will be encoded as json.
  json,
}

/// A type which supports serialization.
// ignore: one_member_abstracts
abstract class Serializable {
  /// Serializes this object into a [StringMap].
  ///
  /// The given [context] should be used to serialize values owned by this
  /// object, unless they are primitives such as [String]s.
  StringMap serialize(SerializationContext context);
}

/// Serializes a value of type [T] to a value which can be encoded as json.
typedef Serializer<T extends Object> = Object Function(
  T value,
  SerializationContext context,
);

/// Deserializes a value decoded from json to a value of type [T].
typedef Deserializer<T extends Object> = T Function(
  Object value,
  SerializationContext context,
);

/// Serializes an object of type [T] to a [StringMap].
typedef ObjectSerializer<T extends Object> = StringMap Function(
  T value,
  SerializationContext context,
);

/// Deserializes a [StringMap] to an object of type [T].
typedef ObjectDeserializer<T extends Object> = T Function(
  StringMap map,
  SerializationContext context,
);

/// Deserializes a [StringMap] to an object of type [T] which is a
/// [Serializable].
typedef SerializableDeserializer<T extends Serializable> = T Function(
  StringMap map,
  SerializationContext context,
);

class SerializationError implements Serializable, Exception {
  SerializationError(this.message);

  final String message;

  @override
  StringMap serialize(SerializationContext context) => {'message': message};

  // ignore: prefer_constructors_over_static_methods
  static SerializationError deserialize(
    StringMap map,
    SerializationContext context,
  ) =>
      SerializationError(map.getAs('message'));

  @override
  String toString() => 'SerializationError: $message';
}

/// The context given to serializers and deserializers to serializes and
/// deserialize owned values.
class SerializationContext {
  SerializationContext({
    required this.registry,
    required this.target,
    List<Data>? data,
  }) : _data = data ?? [];

  final SerializationRegistry registry;
  final List<Data> _data;

  final SerializationTarget target;

  bool canSerialize(Object? value) {
    if (value == null) {
      return true;
    }

    return registry.resolveRegisteredType(value) != null;
  }

  Object? serialize<R extends Object>(R? value) {
    if (value == null) {
      return null;
    }

    final serializer = registry.getSerializer(R);
    if (serializer == null) {
      throw SerializationError(
        'No serializer registered for type $R',
      );
    }

    return serializer(value, this);
  }

  Object? serializePolymorphic(Object? value) {
    if (value == null) {
      return null;
    }

    final type = registry.resolveRegisteredType(value);
    if (type == null) {
      throw SerializationError(
        'No serializer registerd for type ${value.runtimeType}',
      );
    }

    final typeName = registry.getTypeName(type)!;
    final serializer = registry.getSerializer(type)!;

    return [typeName, serializer(value, this)];
  }

  R? deserializeAs<R extends Object>(Object? value) {
    if (value == null) {
      return null;
    }

    final deserializer = registry.getDeserializer<R>();
    if (deserializer == null) {
      throw SerializationError('No deserializer registered for type $R');
    }

    return deserializer(value, this);
  }

  T? deserializePolymorphic<T>(Object? json) {
    if (json == null) {
      return null;
    }

    final list = json as List<Object?>;
    final typeName = list[0]! as String;

    final type = registry.getType(typeName);
    if (type == null) {
      throw SerializationError(
        'No deserializer registerd for type $typeName',
      );
    }

    final deserializer = registry.getDeserializer(type)!;

    final value = deserializer(list[1]!, this);
    if (value is! T) {
      throw SerializationError(
        'Value was polymorphically deserialized, but is not of the expected '
        'type $T: $value',
      );
    }
    return value as T;
  }

  List<Data> get data => _data;

  int addData(Data data) {
    _data.add(data);
    return _data.length - 1;
  }

  Data getData(int id) {
    RangeError.checkValidIndex(id, _data, 'id');
    return _data[id];
  }
}

/// A registry of serializable types and their de/serializers.
class SerializationRegistry {
  factory SerializationRegistry() => _basicSerializationRegistry();

  SerializationRegistry.empty()
      : _nameToType = {},
        _typeToName = {},
        _typeToInstanceOf = {},
        _serializers = {},
        _deserializers = {};

  SerializationRegistry.merge(
    SerializationRegistry registry, {
    required SerializationRegistry into,
  })  : _nameToType = {...into._nameToType, ...registry._nameToType},
        _typeToName = {...into._typeToName, ...registry._typeToName},
        _typeToInstanceOf = {
          ...into._typeToInstanceOf,
          ...registry._typeToInstanceOf
        },
        _serializers = {...into._serializers, ...registry._serializers},
        _deserializers = {...into._deserializers, ...registry._deserializers};

  final Map<String, Type> _nameToType;
  final Map<Type, String> _typeToName;
  final Map<Type, _InstanceOf> _typeToInstanceOf;
  final Map<Type, _SerializationConverter> _serializers;
  final Map<Type, _SerializationConverter> _deserializers;

  void addCodec<R extends Object>(
    String typeName, {
    required Serializer<R> serialize,
    required Deserializer<R> deserialize,
    bool isIsolatePortSafe = true,
    bool handleSubTypes = false,
  }) {
    _addCodec<R>(
      typeName,
      (value, codec) => serialize(value as R, codec),
      deserialize,
      isIsolatePortSafe,
      handleSubTypes,
    );
  }

  void addObjectCodec<R extends Object>(
    String typeName, {
    required ObjectSerializer<R> serialize,
    required ObjectDeserializer<R> deserialize,
    bool isIsolatePortSafe = true,
    bool handleSubTypes = false,
  }) {
    _addCodec<R>(
      typeName,
      (object, codec) => serialize(object as R, codec),
      (json, codec) => deserialize(json as StringMap, codec),
      isIsolatePortSafe,
      handleSubTypes,
    );
  }

  void addSerializableCodec<R extends Serializable>(
    String typeName,
    SerializableDeserializer<R> deserializer, {
    bool isIsolatePortSafe = true,
    bool handleSubTypes = false,
  }) {
    _addCodec<R>(
      typeName,
      (object, codec) => (object as R).serialize(codec),
      (json, codec) => deserializer(json as StringMap, codec),
      isIsolatePortSafe,
      handleSubTypes,
    );
  }

  void _addCodec<R extends Object>(
    String typeName,
    _SerializationConverter serializer,
    _SerializationConverter deserializer,
    bool isIsolatePortSafe,
    bool handleSubTypes,
  ) {
    if (_typeToName.containsKey(R) || _typeToName.containsValue(R)) {
      throw ArgumentError(
        'Codec for type $typeName with type $R has already been added.',
      );
    }

    _nameToType[typeName] = R;
    _typeToName[R] = typeName;

    if (handleSubTypes) {
      _typeToInstanceOf[R] = _makeInstanceOf<R>();
    }

    if (isIsolatePortSafe) {
      final innerSerializer = serializer;
      // ignore: parameter_assignments
      serializer = (value, codec) {
        if (codec.target == SerializationTarget.isolatePort) {
          return value;
        }
        return innerSerializer(value, codec);
      };
    }

    _serializers[R] = serializer;

    if (isIsolatePortSafe) {
      final innerDeserializer = deserializer;
      // ignore: parameter_assignments
      deserializer = (value, codec) {
        if (codec.target == SerializationTarget.isolatePort) {
          return value;
        }
        return innerDeserializer(value, codec);
      };
    }

    _deserializers[R] = deserializer;
  }

  SerializationRegistry merge(SerializationRegistry other) =>
      SerializationRegistry.merge(other, into: this);

  Type? resolveRegisteredType(Object value) {
    final type = value.runtimeType;
    if (!_typeToName.containsKey(type)) {
      return _typeToInstanceOf.entries
          .firstWhereOrNull((entry) => entry.value(value))
          ?.key;
    }
    return type;
  }

  Type? getType(String typeName) => _nameToType[typeName];

  String? getTypeName(Type type) => _typeToName[type];

  Serializer<Object>? getSerializer(Type type) => _serializers[type];

  Deserializer<T>? getDeserializer<T extends Object>([Type? type]) {
    final deserializer = _deserializers[type ?? T];
    if (deserializer == null) {
      return null;
    }

    return (json, context) => deserializer(json, context) as T;
  }
}

typedef _SerializationConverter = Object Function(Object, SerializationContext);

typedef _InstanceOf = bool Function(Object);

_InstanceOf _makeInstanceOf<T>() => (value) => value is T;

SerializationRegistry _basicSerializationRegistry() =>
    SerializationRegistry.empty()
      ..addCodec<String>(
        '__String__',
        serialize: (value, context) => value,
        deserialize: (value, context) => value as String,
      )
      ..addCodec<int>(
        '__int__',
        serialize: (value, context) => value,
        deserialize: (value, context) => value as int,
      )
      ..addCodec<double>(
        '__double__',
        serialize: (value, context) => value,
        deserialize: (value, context) => value as double,
      )
      ..addCodec<num>(
        '__num__',
        serialize: (value, context) => value,
        deserialize: (value, context) => value as num,
      )
      ..addCodec<bool>(
        '__bool__',
        serialize: (value, context) => value,
        deserialize: (value, context) => value as bool,
      )
      ..addObjectCodec<DateTime>(
        '__DateTime__',
        serialize: (value, context) => {
          'us': value.microsecondsSinceEpoch,
          'isUtc': value.isUtc,
        },
        deserialize: (value, context) => DateTime.fromMicrosecondsSinceEpoch(
          value.getAs('us'),
          isUtc: value.getAs('isUtc'),
        ),
      )
      ..addCodec<Duration>(
        '__Duration__',
        serialize: (value, context) => value.inMicroseconds,
        deserialize: (value, context) => Duration(microseconds: value as int),
      )
      ..addCodec<Data>(
        '__Data__',
        serialize: (value, context) => context.addData(value),
        deserialize: (value, context) => context.getData(value as int),
        handleSubTypes: true,
        isIsolatePortSafe: false,
      )
      ..addCodec<StackTrace>(
        '__StackTrace__',
        serialize: (value, context) => value.toString(),
        deserialize: (value, context) => StackTrace.fromString(value as String),
        isIsolatePortSafe: false,
      )
      ..addSerializableCodec(
        'SerializationError',
        SerializationError.deserialize,
      );
// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;
import 'package:cbl/src/bindings/cblite.dart' as imp1;

/// Bindings for Couchbase Lite Dart Support API
class cblitedart {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  cblitedart(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  cblitedart.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void CBLDart_FLSliceResult_RetainByBuf(
    ffi.Pointer<ffi.Void> buf,
  ) {
    return _CBLDart_FLSliceResult_RetainByBuf(
      buf,
    );
  }

  late final _CBLDart_FLSliceResult_RetainByBufPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_FLSliceResult_RetainByBuf>>(
          'CBLDart_FLSliceResult_RetainByBuf');
  late final _CBLDart_FLSliceResult_RetainByBuf =
      _CBLDart_FLSliceResult_RetainByBufPtr.asFunction<
          DartCBLDart_FLSliceResult_RetainByBuf>();

  void CBLDart_FLSliceResult_ReleaseByBuf(
    ffi.Pointer<ffi.Void> buf,
  ) {
    return _CBLDart_FLSliceResult_ReleaseByBuf(
      buf,
    );
  }

  late final _CBLDart_FLSliceResult_ReleaseByBufPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_FLSliceResult_ReleaseByBuf>>(
          'CBLDart_FLSliceResult_ReleaseByBuf');
  late final _CBLDart_FLSliceResult_ReleaseByBuf =
      _CBLDart_FLSliceResult_ReleaseByBufPtr.asFunction<
          DartCBLDart_FLSliceResult_ReleaseByBuf>();

  ffi.Pointer<KnownSharedKeys> CBLDart_KnownSharedKeys_New() {
    return _CBLDart_KnownSharedKeys_New();
  }

  late final _CBLDart_KnownSharedKeys_NewPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_KnownSharedKeys_New>>(
          'CBLDart_KnownSharedKeys_New');
  late final _CBLDart_KnownSharedKeys_New = _CBLDart_KnownSharedKeys_NewPtr
      .asFunction<DartCBLDart_KnownSharedKeys_New>();

  void CBLDart_KnownSharedKeys_Delete(
    ffi.Pointer<KnownSharedKeys> keys,
  ) {
    return _CBLDart_KnownSharedKeys_Delete(
      keys,
    );
  }

  late final _CBLDart_KnownSharedKeys_DeletePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_KnownSharedKeys_Delete>>(
          'CBLDart_KnownSharedKeys_Delete');
  late final _CBLDart_KnownSharedKeys_Delete =
      _CBLDart_KnownSharedKeys_DeletePtr.asFunction<
          DartCBLDart_KnownSharedKeys_Delete>();

  void CBLDart_GetLoadedFLValue(
    imp1.FLValue value,
    ffi.Pointer<CBLDart_LoadedFLValue> out,
  ) {
    return _CBLDart_GetLoadedFLValue(
      value,
      out,
    );
  }

  late final _CBLDart_GetLoadedFLValuePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_GetLoadedFLValue>>(
          'CBLDart_GetLoadedFLValue');
  late final _CBLDart_GetLoadedFLValue =
      _CBLDart_GetLoadedFLValuePtr.asFunction<DartCBLDart_GetLoadedFLValue>();

  void CBLDart_FLArray_GetLoadedFLValue(
    imp1.FLArray array,
    int index,
    ffi.Pointer<CBLDart_LoadedFLValue> out,
  ) {
    return _CBLDart_FLArray_GetLoadedFLValue(
      array,
      index,
      out,
    );
  }

  late final _CBLDart_FLArray_GetLoadedFLValuePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_FLArray_GetLoadedFLValue>>(
          'CBLDart_FLArray_GetLoadedFLValue');
  late final _CBLDart_FLArray_GetLoadedFLValue =
      _CBLDart_FLArray_GetLoadedFLValuePtr.asFunction<
          DartCBLDart_FLArray_GetLoadedFLValue>();

  void CBLDart_FLDict_GetLoadedFLValue(
    imp1.FLDict dict,
    imp1.FLString key,
    ffi.Pointer<CBLDart_LoadedFLValue> out,
  ) {
    return _CBLDart_FLDict_GetLoadedFLValue(
      dict,
      key,
      out,
    );
  }

  late final _CBLDart_FLDict_GetLoadedFLValuePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_FLDict_GetLoadedFLValue>>(
          'CBLDart_FLDict_GetLoadedFLValue');
  late final _CBLDart_FLDict_GetLoadedFLValue =
      _CBLDart_FLDict_GetLoadedFLValuePtr.asFunction<
          DartCBLDart_FLDict_GetLoadedFLValue>();

  ffi.Pointer<CBLDart_FLDictIterator> CBLDart_FLDictIterator_Begin(
    imp1.FLDict dict,
    ffi.Pointer<KnownSharedKeys> knownSharedKeys,
    ffi.Pointer<CBLDart_LoadedDictKey> keyOut,
    ffi.Pointer<CBLDart_LoadedFLValue> valueOut,
    bool deleteOnDone,
    bool preLoad,
  ) {
    return _CBLDart_FLDictIterator_Begin(
      dict,
      knownSharedKeys,
      keyOut,
      valueOut,
      deleteOnDone,
      preLoad,
    );
  }

  late final _CBLDart_FLDictIterator_BeginPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_FLDictIterator_Begin>>(
          'CBLDart_FLDictIterator_Begin');
  late final _CBLDart_FLDictIterator_Begin = _CBLDart_FLDictIterator_BeginPtr
      .asFunction<DartCBLDart_FLDictIterator_Begin>();

  void CBLDart_FLDictIterator_Delete(
    ffi.Pointer<CBLDart_FLDictIterator> iterator,
  ) {
    return _CBLDart_FLDictIterator_Delete(
      iterator,
    );
  }

  late final _CBLDart_FLDictIterator_DeletePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_FLDictIterator_Delete>>(
          'CBLDart_FLDictIterator_Delete');
  late final _CBLDart_FLDictIterator_Delete = _CBLDart_FLDictIterator_DeletePtr
      .asFunction<DartCBLDart_FLDictIterator_Delete>();

  bool CBLDart_FLDictIterator_Next(
    ffi.Pointer<CBLDart_FLDictIterator> iterator,
  ) {
    return _CBLDart_FLDictIterator_Next(
      iterator,
    );
  }

  late final _CBLDart_FLDictIterator_NextPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_FLDictIterator_Next>>(
          'CBLDart_FLDictIterator_Next');
  late final _CBLDart_FLDictIterator_Next = _CBLDart_FLDictIterator_NextPtr
      .asFunction<DartCBLDart_FLDictIterator_Next>();

  ffi.Pointer<CBLDart_FLArrayIterator> CBLDart_FLArrayIterator_Begin(
    imp1.FLArray array,
    ffi.Pointer<CBLDart_LoadedFLValue> valueOut,
    bool deleteOnDone,
  ) {
    return _CBLDart_FLArrayIterator_Begin(
      array,
      valueOut,
      deleteOnDone,
    );
  }

  late final _CBLDart_FLArrayIterator_BeginPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_FLArrayIterator_Begin>>(
          'CBLDart_FLArrayIterator_Begin');
  late final _CBLDart_FLArrayIterator_Begin = _CBLDart_FLArrayIterator_BeginPtr
      .asFunction<DartCBLDart_FLArrayIterator_Begin>();

  void CBLDart_FLArrayIterator_Delete(
    ffi.Pointer<CBLDart_FLArrayIterator> iterator,
  ) {
    return _CBLDart_FLArrayIterator_Delete(
      iterator,
    );
  }

  late final _CBLDart_FLArrayIterator_DeletePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_FLArrayIterator_Delete>>(
          'CBLDart_FLArrayIterator_Delete');
  late final _CBLDart_FLArrayIterator_Delete =
      _CBLDart_FLArrayIterator_DeletePtr.asFunction<
          DartCBLDart_FLArrayIterator_Delete>();

  bool CBLDart_FLArrayIterator_Next(
    ffi.Pointer<CBLDart_FLArrayIterator> iterator,
  ) {
    return _CBLDart_FLArrayIterator_Next(
      iterator,
    );
  }

  late final _CBLDart_FLArrayIterator_NextPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_FLArrayIterator_Next>>(
          'CBLDart_FLArrayIterator_Next');
  late final _CBLDart_FLArrayIterator_Next = _CBLDart_FLArrayIterator_NextPtr
      .asFunction<DartCBLDart_FLArrayIterator_Next>();

  bool CBLDart_FLEncoder_WriteArrayValue(
    imp1.FLEncoder encoder,
    imp1.FLArray array,
    int index,
  ) {
    return _CBLDart_FLEncoder_WriteArrayValue(
      encoder,
      array,
      index,
    );
  }

  late final _CBLDart_FLEncoder_WriteArrayValuePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_FLEncoder_WriteArrayValue>>(
          'CBLDart_FLEncoder_WriteArrayValue');
  late final _CBLDart_FLEncoder_WriteArrayValue =
      _CBLDart_FLEncoder_WriteArrayValuePtr.asFunction<
          DartCBLDart_FLEncoder_WriteArrayValue>();

  /// Initializes the native libraries.
  ///
  /// This function can be called multiple times and is thread save. The
  /// libraries are only initialized by the first call and subsequent calls are
  /// NOOPs.
  CBLDartInitializeResult CBLDart_Initialize(
    ffi.Pointer<ffi.Void> dartInitializeDlData,
    ffi.Pointer<ffi.Void> cblInitContext,
    ffi.Pointer<CBLError> errorOut,
  ) {
    return CBLDartInitializeResult.fromValue(_CBLDart_Initialize(
      dartInitializeDlData,
      cblInitContext,
      errorOut,
    ));
  }

  late final _CBLDart_InitializePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_Initialize>>(
          'CBLDart_Initialize');
  late final _CBLDart_Initialize =
      _CBLDart_InitializePtr.asFunction<DartCBLDart_Initialize>();

  CBLDart_AsyncCallback CBLDart_AsyncCallback_New(
    int id,
    int sendPort,
    bool debug,
  ) {
    return _CBLDart_AsyncCallback_New(
      id,
      sendPort,
      debug,
    );
  }

  late final _CBLDart_AsyncCallback_NewPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_AsyncCallback_New>>(
          'CBLDart_AsyncCallback_New');
  late final _CBLDart_AsyncCallback_New =
      _CBLDart_AsyncCallback_NewPtr.asFunction<DartCBLDart_AsyncCallback_New>();

  void CBLDart_AsyncCallback_Delete(
    CBLDart_AsyncCallback callback,
  ) {
    return _CBLDart_AsyncCallback_Delete(
      callback,
    );
  }

  late final _CBLDart_AsyncCallback_DeletePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_AsyncCallback_Delete>>(
          'CBLDart_AsyncCallback_Delete');
  late final _CBLDart_AsyncCallback_Delete = _CBLDart_AsyncCallback_DeletePtr
      .asFunction<DartCBLDart_AsyncCallback_Delete>();

  void CBLDart_AsyncCallback_Close(
    CBLDart_AsyncCallback callback,
  ) {
    return _CBLDart_AsyncCallback_Close(
      callback,
    );
  }

  late final _CBLDart_AsyncCallback_ClosePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_AsyncCallback_Close>>(
          'CBLDart_AsyncCallback_Close');
  late final _CBLDart_AsyncCallback_Close = _CBLDart_AsyncCallback_ClosePtr
      .asFunction<DartCBLDart_AsyncCallback_Close>();

  void CBLDart_AsyncCallback_CallForTest(
    CBLDart_AsyncCallback callback,
    int argument,
  ) {
    return _CBLDart_AsyncCallback_CallForTest(
      callback,
      argument,
    );
  }

  late final _CBLDart_AsyncCallback_CallForTestPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_AsyncCallback_CallForTest>>(
          'CBLDart_AsyncCallback_CallForTest');
  late final _CBLDart_AsyncCallback_CallForTest =
      _CBLDart_AsyncCallback_CallForTestPtr.asFunction<
          DartCBLDart_AsyncCallback_CallForTest>();

  bool CBLDart_CBLLog_SetCallback(
    CBLDart_AsyncCallback callback,
  ) {
    return _CBLDart_CBLLog_SetCallback(
      callback,
    );
  }

  late final _CBLDart_CBLLog_SetCallbackPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLLog_SetCallback>>(
          'CBLDart_CBLLog_SetCallback');
  late final _CBLDart_CBLLog_SetCallback = _CBLDart_CBLLog_SetCallbackPtr
      .asFunction<DartCBLDart_CBLLog_SetCallback>();

  void CBLDart_CBLLog_SetCallbackLevel(
    int level,
  ) {
    return _CBLDart_CBLLog_SetCallbackLevel(
      level,
    );
  }

  late final _CBLDart_CBLLog_SetCallbackLevelPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLLog_SetCallbackLevel>>(
          'CBLDart_CBLLog_SetCallbackLevel');
  late final _CBLDart_CBLLog_SetCallbackLevel =
      _CBLDart_CBLLog_SetCallbackLevelPtr.asFunction<
          DartCBLDart_CBLLog_SetCallbackLevel>();

  bool CBLDart_CBLLog_SetFileConfig(
    ffi.Pointer<CBLLogFileConfiguration> config,
    ffi.Pointer<CBLError> errorOut,
  ) {
    return _CBLDart_CBLLog_SetFileConfig(
      config,
      errorOut,
    );
  }

  late final _CBLDart_CBLLog_SetFileConfigPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLLog_SetFileConfig>>(
          'CBLDart_CBLLog_SetFileConfig');
  late final _CBLDart_CBLLog_SetFileConfig = _CBLDart_CBLLog_SetFileConfigPtr
      .asFunction<DartCBLDart_CBLLog_SetFileConfig>();

  ffi.Pointer<CBLLogFileConfiguration> CBLDart_CBLLog_GetFileConfig() {
    return _CBLDart_CBLLog_GetFileConfig();
  }

  late final _CBLDart_CBLLog_GetFileConfigPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLLog_GetFileConfig>>(
          'CBLDart_CBLLog_GetFileConfig');
  late final _CBLDart_CBLLog_GetFileConfig = _CBLDart_CBLLog_GetFileConfigPtr
      .asFunction<DartCBLDart_CBLLog_GetFileConfig>();

  bool CBLDart_CBLLog_SetSentryBreadcrumbs(
    bool enabled,
  ) {
    return _CBLDart_CBLLog_SetSentryBreadcrumbs(
      enabled,
    );
  }

  late final _CBLDart_CBLLog_SetSentryBreadcrumbsPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLLog_SetSentryBreadcrumbs>>(
          'CBLDart_CBLLog_SetSentryBreadcrumbs');
  late final _CBLDart_CBLLog_SetSentryBreadcrumbs =
      _CBLDart_CBLLog_SetSentryBreadcrumbsPtr.asFunction<
          DartCBLDart_CBLLog_SetSentryBreadcrumbs>();

  CBLDart_CBLDatabaseConfiguration CBLDart_CBLDatabaseConfiguration_Default() {
    return _CBLDart_CBLDatabaseConfiguration_Default();
  }

  late final _CBLDart_CBLDatabaseConfiguration_DefaultPtr = _lookup<
          ffi.NativeFunction<NativeCBLDart_CBLDatabaseConfiguration_Default>>(
      'CBLDart_CBLDatabaseConfiguration_Default');
  late final _CBLDart_CBLDatabaseConfiguration_Default =
      _CBLDart_CBLDatabaseConfiguration_DefaultPtr.asFunction<
          DartCBLDart_CBLDatabaseConfiguration_Default>();

  bool CBLDart_CBL_CopyDatabase(
    imp1.FLString fromPath,
    imp1.FLString toName,
    ffi.Pointer<CBLDart_CBLDatabaseConfiguration> config,
    ffi.Pointer<CBLError> outError,
  ) {
    return _CBLDart_CBL_CopyDatabase(
      fromPath,
      toName,
      config,
      outError,
    );
  }

  late final _CBLDart_CBL_CopyDatabasePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBL_CopyDatabase>>(
          'CBLDart_CBL_CopyDatabase');
  late final _CBLDart_CBL_CopyDatabase =
      _CBLDart_CBL_CopyDatabasePtr.asFunction<DartCBLDart_CBL_CopyDatabase>();

  ffi.Pointer<CBLDatabase> CBLDart_CBLDatabase_Open(
    imp1.FLString name,
    ffi.Pointer<CBLDart_CBLDatabaseConfiguration> config,
    ffi.Pointer<CBLError> errorOut,
  ) {
    return _CBLDart_CBLDatabase_Open(
      name,
      config,
      errorOut,
    );
  }

  late final _CBLDart_CBLDatabase_OpenPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLDatabase_Open>>(
          'CBLDart_CBLDatabase_Open');
  late final _CBLDart_CBLDatabase_Open =
      _CBLDart_CBLDatabase_OpenPtr.asFunction<DartCBLDart_CBLDatabase_Open>();

  void CBLDart_CBLDatabase_Release(
    ffi.Pointer<CBLDatabase> database,
  ) {
    return _CBLDart_CBLDatabase_Release(
      database,
    );
  }

  late final _CBLDart_CBLDatabase_ReleasePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLDatabase_Release>>(
          'CBLDart_CBLDatabase_Release');
  late final _CBLDart_CBLDatabase_Release = _CBLDart_CBLDatabase_ReleasePtr
      .asFunction<DartCBLDart_CBLDatabase_Release>();

  bool CBLDart_CBLDatabase_Close(
    ffi.Pointer<CBLDatabase> database,
    bool andDelete,
    ffi.Pointer<CBLError> errorOut,
  ) {
    return _CBLDart_CBLDatabase_Close(
      database,
      andDelete,
      errorOut,
    );
  }

  late final _CBLDart_CBLDatabase_ClosePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLDatabase_Close>>(
          'CBLDart_CBLDatabase_Close');
  late final _CBLDart_CBLDatabase_Close =
      _CBLDart_CBLDatabase_ClosePtr.asFunction<DartCBLDart_CBLDatabase_Close>();

  void CBLDart_CBLCollection_AddDocumentChangeListener(
    ffi.Pointer<CBLDatabase> db,
    ffi.Pointer<CBLCollection> collection,
    imp1.FLString docID,
    CBLDart_AsyncCallback listener,
  ) {
    return _CBLDart_CBLCollection_AddDocumentChangeListener(
      db,
      collection,
      docID,
      listener,
    );
  }

  late final _CBLDart_CBLCollection_AddDocumentChangeListenerPtr = _lookup<
          ffi.NativeFunction<
              NativeCBLDart_CBLCollection_AddDocumentChangeListener>>(
      'CBLDart_CBLCollection_AddDocumentChangeListener');
  late final _CBLDart_CBLCollection_AddDocumentChangeListener =
      _CBLDart_CBLCollection_AddDocumentChangeListenerPtr.asFunction<
          DartCBLDart_CBLCollection_AddDocumentChangeListener>();

  void CBLDart_CBLCollection_AddChangeListener(
    ffi.Pointer<CBLDatabase> db,
    ffi.Pointer<CBLCollection> collection,
    CBLDart_AsyncCallback listener,
  ) {
    return _CBLDart_CBLCollection_AddChangeListener(
      db,
      collection,
      listener,
    );
  }

  late final _CBLDart_CBLCollection_AddChangeListenerPtr = _lookup<
          ffi.NativeFunction<NativeCBLDart_CBLCollection_AddChangeListener>>(
      'CBLDart_CBLCollection_AddChangeListener');
  late final _CBLDart_CBLCollection_AddChangeListener =
      _CBLDart_CBLCollection_AddChangeListenerPtr.asFunction<
          DartCBLDart_CBLCollection_AddChangeListener>();

  bool CBLDart_CBLCollection_CreateIndex(
    ffi.Pointer<CBLCollection> collection,
    imp1.FLString name,
    CBLDart_CBLIndexSpec indexSpec,
    ffi.Pointer<CBLError> errorOut,
  ) {
    return _CBLDart_CBLCollection_CreateIndex(
      collection,
      name,
      indexSpec,
      errorOut,
    );
  }

  late final _CBLDart_CBLCollection_CreateIndexPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLCollection_CreateIndex>>(
          'CBLDart_CBLCollection_CreateIndex');
  late final _CBLDart_CBLCollection_CreateIndex =
      _CBLDart_CBLCollection_CreateIndexPtr.asFunction<
          DartCBLDart_CBLCollection_CreateIndex>();

  ffi.Pointer<CBLListenerToken> CBLDart_CBLQuery_AddChangeListener(
    ffi.Pointer<CBLDatabase> db,
    ffi.Pointer<CBLQuery> query,
    CBLDart_AsyncCallback listener,
  ) {
    return _CBLDart_CBLQuery_AddChangeListener(
      db,
      query,
      listener,
    );
  }

  late final _CBLDart_CBLQuery_AddChangeListenerPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLQuery_AddChangeListener>>(
          'CBLDart_CBLQuery_AddChangeListener');
  late final _CBLDart_CBLQuery_AddChangeListener =
      _CBLDart_CBLQuery_AddChangeListenerPtr.asFunction<
          DartCBLDart_CBLQuery_AddChangeListener>();

  FLSliceResult CBLDart_CBLBlobReader_Read(
    ffi.Pointer<CBLBlobReadStream> stream,
    int bufferSize,
    ffi.Pointer<CBLError> outError,
  ) {
    return _CBLDart_CBLBlobReader_Read(
      stream,
      bufferSize,
      outError,
    );
  }

  late final _CBLDart_CBLBlobReader_ReadPtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLBlobReader_Read>>(
          'CBLDart_CBLBlobReader_Read');
  late final _CBLDart_CBLBlobReader_Read = _CBLDart_CBLBlobReader_ReadPtr
      .asFunction<DartCBLDart_CBLBlobReader_Read>();

  ffi.Pointer<CBLReplicator> CBLDart_CBLReplicator_Create(
    ffi.Pointer<CBLDart_ReplicatorConfiguration> config,
    ffi.Pointer<CBLError> errorOut,
  ) {
    return _CBLDart_CBLReplicator_Create(
      config,
      errorOut,
    );
  }

  late final _CBLDart_CBLReplicator_CreatePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLReplicator_Create>>(
          'CBLDart_CBLReplicator_Create');
  late final _CBLDart_CBLReplicator_Create = _CBLDart_CBLReplicator_CreatePtr
      .asFunction<DartCBLDart_CBLReplicator_Create>();

  void CBLDart_CBLReplicator_Release(
    ffi.Pointer<CBLReplicator> replicator,
  ) {
    return _CBLDart_CBLReplicator_Release(
      replicator,
    );
  }

  late final _CBLDart_CBLReplicator_ReleasePtr =
      _lookup<ffi.NativeFunction<NativeCBLDart_CBLReplicator_Release>>(
          'CBLDart_CBLReplicator_Release');
  late final _CBLDart_CBLReplicator_Release = _CBLDart_CBLReplicator_ReleasePtr
      .asFunction<DartCBLDart_CBLReplicator_Release>();

  void CBLDart_CBLReplicator_AddChangeListener(
    ffi.Pointer<CBLDatabase> db,
    ffi.Pointer<CBLReplicator> replicator,
    CBLDart_AsyncCallback listenerId,
  ) {
    return _CBLDart_CBLReplicator_AddChangeListener(
      db,
      replicator,
      listenerId,
    );
  }

  late final _CBLDart_CBLReplicator_AddChangeListenerPtr = _lookup<
          ffi.NativeFunction<NativeCBLDart_CBLReplicator_AddChangeListener>>(
      'CBLDart_CBLReplicator_AddChangeListener');
  late final _CBLDart_CBLReplicator_AddChangeListener =
      _CBLDart_CBLReplicator_AddChangeListenerPtr.asFunction<
          DartCBLDart_CBLReplicator_AddChangeListener>();

  void CBLDart_CBLReplicator_AddDocumentReplicationListener(
    ffi.Pointer<CBLDatabase> db,
    ffi.Pointer<CBLReplicator> replicator,
    CBLDart_AsyncCallback listenerId,
  ) {
    return _CBLDart_CBLReplicator_AddDocumentReplicationListener(
      db,
      replicator,
      listenerId,
    );
  }

  late final _CBLDart_CBLReplicator_AddDocumentReplicationListenerPtr = _lookup<
          ffi.NativeFunction<
              NativeCBLDart_CBLReplicator_AddDocumentReplicationListener>>(
      'CBLDart_CBLReplicator_AddDocumentReplicationListener');
  late final _CBLDart_CBLReplicator_AddDocumentReplicationListener =
      _CBLDart_CBLReplicator_AddDocumentReplicationListenerPtr.asFunction<
          DartCBLDart_CBLReplicator_AddDocumentReplicationListener>();

  late final addresses = _SymbolAddresses(this);
}

class _SymbolAddresses {
  final cblitedart _library;
  _SymbolAddresses(this._library);
  ffi.Pointer<ffi.NativeFunction<NativeCBLDart_FLSliceResult_ReleaseByBuf>>
      get CBLDart_FLSliceResult_ReleaseByBuf =>
          _library._CBLDart_FLSliceResult_ReleaseByBufPtr;
  ffi.Pointer<ffi.NativeFunction<NativeCBLDart_KnownSharedKeys_Delete>>
      get CBLDart_KnownSharedKeys_Delete =>
          _library._CBLDart_KnownSharedKeys_DeletePtr;
  ffi.Pointer<ffi.NativeFunction<NativeCBLDart_FLDictIterator_Delete>>
      get CBLDart_FLDictIterator_Delete =>
          _library._CBLDart_FLDictIterator_DeletePtr;
  ffi.Pointer<ffi.NativeFunction<NativeCBLDart_FLArrayIterator_Delete>>
      get CBLDart_FLArrayIterator_Delete =>
          _library._CBLDart_FLArrayIterator_DeletePtr;
  ffi.Pointer<ffi.NativeFunction<NativeCBLDart_AsyncCallback_Delete>>
      get CBLDart_AsyncCallback_Delete =>
          _library._CBLDart_AsyncCallback_DeletePtr;
  ffi.Pointer<ffi.NativeFunction<NativeCBLDart_CBLDatabase_Release>>
      get CBLDart_CBLDatabase_Release =>
          _library._CBLDart_CBLDatabase_ReleasePtr;
  ffi.Pointer<ffi.NativeFunction<NativeCBLDart_CBLReplicator_Release>>
      get CBLDart_CBLReplicator_Release =>
          _library._CBLDart_CBLReplicator_ReleasePtr;
}

typedef NativeCBLDart_FLSliceResult_RetainByBuf = ffi.Void Function(
    ffi.Pointer<ffi.Void> buf);
typedef DartCBLDart_FLSliceResult_RetainByBuf = void Function(
    ffi.Pointer<ffi.Void> buf);
typedef NativeCBLDart_FLSliceResult_ReleaseByBuf = ffi.Void Function(
    ffi.Pointer<ffi.Void> buf);
typedef DartCBLDart_FLSliceResult_ReleaseByBuf = void Function(
    ffi.Pointer<ffi.Void> buf);

final class KnownSharedKeys extends ffi.Opaque {}

typedef NativeCBLDart_KnownSharedKeys_New = ffi.Pointer<KnownSharedKeys>
    Function();
typedef DartCBLDart_KnownSharedKeys_New = ffi.Pointer<KnownSharedKeys>
    Function();
typedef NativeCBLDart_KnownSharedKeys_Delete = ffi.Void Function(
    ffi.Pointer<KnownSharedKeys> keys);
typedef DartCBLDart_KnownSharedKeys_Delete = void Function(
    ffi.Pointer<KnownSharedKeys> keys);

final class CBLDart_LoadedDictKey extends ffi.Struct {
  @ffi.Bool()
  external bool isKnownSharedKey;

  @ffi.Int()
  external int sharedKey;

  external ffi.Pointer<ffi.Void> stringBuf;

  @ffi.Size()
  external int stringSize;

  external imp1.FLValue value;
}

/// A simple reference to a block of memory. Does not imply ownership. (This is
/// equivalent to the C++ class `slice`.)
typedef FLSlice = imp1.FLSlice;

final class CBLDart_LoadedFLValue extends ffi.Struct {
  @ffi.Bool()
  external bool exists;

  @ffi.Int8()
  external int type;

  @ffi.Bool()
  external bool isInteger;

  @ffi.Uint32()
  external int collectionSize;

  @ffi.Bool()
  external bool asBool;

  @ffi.Int64()
  external int asInt;

  @ffi.Double()
  external double asDouble;

  external ffi.Pointer<ffi.Void> stringBuf;

  @ffi.Size()
  external int stringSize;

  external FLSlice asData;

  external imp1.FLValue value;
}

typedef NativeCBLDart_GetLoadedFLValue = ffi.Void Function(
    imp1.FLValue value, ffi.Pointer<CBLDart_LoadedFLValue> out);
typedef DartCBLDart_GetLoadedFLValue = void Function(
    imp1.FLValue value, ffi.Pointer<CBLDart_LoadedFLValue> out);
typedef NativeCBLDart_FLArray_GetLoadedFLValue = ffi.Void Function(
    imp1.FLArray array,
    ffi.Uint32 index,
    ffi.Pointer<CBLDart_LoadedFLValue> out);
typedef DartCBLDart_FLArray_GetLoadedFLValue = void Function(
    imp1.FLArray array, int index, ffi.Pointer<CBLDart_LoadedFLValue> out);
typedef NativeCBLDart_FLDict_GetLoadedFLValue = ffi.Void Function(
    imp1.FLDict dict,
    imp1.FLString key,
    ffi.Pointer<CBLDart_LoadedFLValue> out);
typedef DartCBLDart_FLDict_GetLoadedFLValue = void Function(imp1.FLDict dict,
    imp1.FLString key, ffi.Pointer<CBLDart_LoadedFLValue> out);

final class CBLDart_FLDictIterator extends ffi.Opaque {}

typedef NativeCBLDart_FLDictIterator_Begin
    = ffi.Pointer<CBLDart_FLDictIterator> Function(
        imp1.FLDict dict,
        ffi.Pointer<KnownSharedKeys> knownSharedKeys,
        ffi.Pointer<CBLDart_LoadedDictKey> keyOut,
        ffi.Pointer<CBLDart_LoadedFLValue> valueOut,
        ffi.Bool deleteOnDone,
        ffi.Bool preLoad);
typedef DartCBLDart_FLDictIterator_Begin
    = ffi.Pointer<CBLDart_FLDictIterator> Function(
        imp1.FLDict dict,
        ffi.Pointer<KnownSharedKeys> knownSharedKeys,
        ffi.Pointer<CBLDart_LoadedDictKey> keyOut,
        ffi.Pointer<CBLDart_LoadedFLValue> valueOut,
        bool deleteOnDone,
        bool preLoad);
typedef NativeCBLDart_FLDictIterator_Delete = ffi.Void Function(
    ffi.Pointer<CBLDart_FLDictIterator> iterator);
typedef DartCBLDart_FLDictIterator_Delete = void Function(
    ffi.Pointer<CBLDart_FLDictIterator> iterator);
typedef NativeCBLDart_FLDictIterator_Next = ffi.Bool Function(
    ffi.Pointer<CBLDart_FLDictIterator> iterator);
typedef DartCBLDart_FLDictIterator_Next = bool Function(
    ffi.Pointer<CBLDart_FLDictIterator> iterator);

final class CBLDart_FLArrayIterator extends ffi.Opaque {}

typedef NativeCBLDart_FLArrayIterator_Begin
    = ffi.Pointer<CBLDart_FLArrayIterator> Function(imp1.FLArray array,
        ffi.Pointer<CBLDart_LoadedFLValue> valueOut, ffi.Bool deleteOnDone);
typedef DartCBLDart_FLArrayIterator_Begin
    = ffi.Pointer<CBLDart_FLArrayIterator> Function(imp1.FLArray array,
        ffi.Pointer<CBLDart_LoadedFLValue> valueOut, bool deleteOnDone);
typedef NativeCBLDart_FLArrayIterator_Delete = ffi.Void Function(
    ffi.Pointer<CBLDart_FLArrayIterator> iterator);
typedef DartCBLDart_FLArrayIterator_Delete = void Function(
    ffi.Pointer<CBLDart_FLArrayIterator> iterator);
typedef NativeCBLDart_FLArrayIterator_Next = ffi.Bool Function(
    ffi.Pointer<CBLDart_FLArrayIterator> iterator);
typedef DartCBLDart_FLArrayIterator_Next = bool Function(
    ffi.Pointer<CBLDart_FLArrayIterator> iterator);
typedef NativeCBLDart_FLEncoder_WriteArrayValue = ffi.Bool Function(
    imp1.FLEncoder encoder, imp1.FLArray array, ffi.Uint32 index);
typedef DartCBLDart_FLEncoder_WriteArrayValue = bool Function(
    imp1.FLEncoder encoder, imp1.FLArray array, int index);

/// This is a compatibility layer to allow Dart code to use the Couchbase Lite C
/// API. Some method signatures are incompatible with Dart's FFI capabilities.
///
/// This layer is also where memory management of objects from the Couchbase
/// Lite C API is integrated with the garbage collection of Dart objects.
enum CBLDartInitializeResult {
  CBLDartInitializeResult_kSuccess(0),
  CBLDartInitializeResult_kIncompatibleDartVM(1),
  CBLDartInitializeResult_kCBLInitError(2);

  final int value;
  const CBLDartInitializeResult(this.value);

  static CBLDartInitializeResult fromValue(int value) => switch (value) {
        0 => CBLDartInitializeResult_kSuccess,
        1 => CBLDartInitializeResult_kIncompatibleDartVM,
        2 => CBLDartInitializeResult_kCBLInitError,
        _ => throw ArgumentError(
            "Unknown value for CBLDartInitializeResult: $value"),
      };
}

/// A struct holding information about an error. It's declared on the stack by a
/// caller, and its address is passed to an API function. If the function's
/// return value indicates that there was an error (usually by returning NULL or
/// false), then the CBLError will have been filled in with the details.
typedef CBLError = imp1.CBLError;
typedef NativeCBLDart_Initialize = ffi.UnsignedInt Function(
    ffi.Pointer<ffi.Void> dartInitializeDlData,
    ffi.Pointer<ffi.Void> cblInitContext,
    ffi.Pointer<CBLError> errorOut);
typedef DartCBLDart_Initialize = int Function(
    ffi.Pointer<ffi.Void> dartInitializeDlData,
    ffi.Pointer<ffi.Void> cblInitContext,
    ffi.Pointer<CBLError> errorOut);

final class _CBLDart_AsyncCallback extends ffi.Opaque {}

typedef CBLDart_AsyncCallback = ffi.Pointer<_CBLDart_AsyncCallback>;

/// A port is used to send or receive inter-isolate messages
typedef Dart_Port = ffi.Int64;
typedef DartDart_Port = int;
typedef NativeCBLDart_AsyncCallback_New = CBLDart_AsyncCallback Function(
    ffi.Uint32 id, Dart_Port sendPort, ffi.Bool debug);
typedef DartCBLDart_AsyncCallback_New = CBLDart_AsyncCallback Function(
    int id, int sendPort, bool debug);
typedef NativeCBLDart_AsyncCallback_Delete = ffi.Void Function(
    CBLDart_AsyncCallback callback);
typedef DartCBLDart_AsyncCallback_Delete = void Function(
    CBLDart_AsyncCallback callback);
typedef NativeCBLDart_AsyncCallback_Close = ffi.Void Function(
    CBLDart_AsyncCallback callback);
typedef DartCBLDart_AsyncCallback_Close = void Function(
    CBLDart_AsyncCallback callback);
typedef NativeCBLDart_AsyncCallback_CallForTest = ffi.Void Function(
    CBLDart_AsyncCallback callback, ffi.Int64 argument);
typedef DartCBLDart_AsyncCallback_CallForTest = void Function(
    CBLDart_AsyncCallback callback, int argument);
typedef NativeCBLDart_CBLLog_SetCallback = ffi.Bool Function(
    CBLDart_AsyncCallback callback);
typedef DartCBLDart_CBLLog_SetCallback = bool Function(
    CBLDart_AsyncCallback callback);
typedef NativeCBLDart_CBLLog_SetCallbackLevel = ffi.Void Function(
    imp1.CBLLogLevel level);
typedef DartCBLDart_CBLLog_SetCallbackLevel = void Function(int level);

/// The properties for configuring logging to files. @warning `usePlaintext`
/// results in significantly larger log files and higher CPU usage that may slow
/// down your app; we recommend turning it off in production.
typedef CBLLogFileConfiguration = imp1.CBLLogFileConfiguration;
typedef NativeCBLDart_CBLLog_SetFileConfig = ffi.Bool Function(
    ffi.Pointer<CBLLogFileConfiguration> config,
    ffi.Pointer<CBLError> errorOut);
typedef DartCBLDart_CBLLog_SetFileConfig = bool Function(
    ffi.Pointer<CBLLogFileConfiguration> config,
    ffi.Pointer<CBLError> errorOut);
typedef NativeCBLDart_CBLLog_GetFileConfig
    = ffi.Pointer<CBLLogFileConfiguration> Function();
typedef DartCBLDart_CBLLog_GetFileConfig = ffi.Pointer<CBLLogFileConfiguration>
    Function();
typedef NativeCBLDart_CBLLog_SetSentryBreadcrumbs = ffi.Bool Function(
    ffi.Bool enabled);
typedef DartCBLDart_CBLLog_SetSentryBreadcrumbs = bool Function(bool enabled);

final class CBLDart_CBLEncryptionKey extends ffi.Struct {
  @ffi.Uint32()
  external int algorithm;

  @ffi.Array.multi([32])
  external ffi.Array<ffi.Uint8> bytes;
}

final class CBLDart_CBLDatabaseConfiguration extends ffi.Struct {
  external imp1.FLString directory;

  external CBLDart_CBLEncryptionKey encryptionKey;

  @ffi.Bool()
  external bool fullSync;
}

typedef NativeCBLDart_CBLDatabaseConfiguration_Default
    = CBLDart_CBLDatabaseConfiguration Function();
typedef DartCBLDart_CBLDatabaseConfiguration_Default
    = CBLDart_CBLDatabaseConfiguration Function();
typedef NativeCBLDart_CBL_CopyDatabase = ffi.Bool Function(
    imp1.FLString fromPath,
    imp1.FLString toName,
    ffi.Pointer<CBLDart_CBLDatabaseConfiguration> config,
    ffi.Pointer<CBLError> outError);
typedef DartCBLDart_CBL_CopyDatabase = bool Function(
    imp1.FLString fromPath,
    imp1.FLString toName,
    ffi.Pointer<CBLDart_CBLDatabaseConfiguration> config,
    ffi.Pointer<CBLError> outError);

/// \defgroup database Database @{ \*/ /\*\* A connection to an open database.
typedef CBLDatabase = imp1.CBLDatabase;
typedef NativeCBLDart_CBLDatabase_Open = ffi.Pointer<CBLDatabase> Function(
    imp1.FLString name,
    ffi.Pointer<CBLDart_CBLDatabaseConfiguration> config,
    ffi.Pointer<CBLError> errorOut);
typedef DartCBLDart_CBLDatabase_Open = ffi.Pointer<CBLDatabase> Function(
    imp1.FLString name,
    ffi.Pointer<CBLDart_CBLDatabaseConfiguration> config,
    ffi.Pointer<CBLError> errorOut);
typedef NativeCBLDart_CBLDatabase_Release = ffi.Void Function(
    ffi.Pointer<CBLDatabase> database);
typedef DartCBLDart_CBLDatabase_Release = void Function(
    ffi.Pointer<CBLDatabase> database);
typedef NativeCBLDart_CBLDatabase_Close = ffi.Bool Function(
    ffi.Pointer<CBLDatabase> database,
    ffi.Bool andDelete,
    ffi.Pointer<CBLError> errorOut);
typedef DartCBLDart_CBLDatabase_Close = bool Function(
    ffi.Pointer<CBLDatabase> database,
    bool andDelete,
    ffi.Pointer<CBLError> errorOut);

/// \defgroup collection Collection @{ \*/ /\*\* A collection, a document
/// container.
typedef CBLCollection = imp1.CBLCollection;
typedef NativeCBLDart_CBLCollection_AddDocumentChangeListener
    = ffi.Void Function(
        ffi.Pointer<CBLDatabase> db,
        ffi.Pointer<CBLCollection> collection,
        imp1.FLString docID,
        CBLDart_AsyncCallback listener);
typedef DartCBLDart_CBLCollection_AddDocumentChangeListener = void Function(
    ffi.Pointer<CBLDatabase> db,
    ffi.Pointer<CBLCollection> collection,
    imp1.FLString docID,
    CBLDart_AsyncCallback listener);
typedef NativeCBLDart_CBLCollection_AddChangeListener = ffi.Void Function(
    ffi.Pointer<CBLDatabase> db,
    ffi.Pointer<CBLCollection> collection,
    CBLDart_AsyncCallback listener);
typedef DartCBLDart_CBLCollection_AddChangeListener = void Function(
    ffi.Pointer<CBLDatabase> db,
    ffi.Pointer<CBLCollection> collection,
    CBLDart_AsyncCallback listener);

enum CBLDart_IndexType {
  kCBLDart_IndexTypeValue(0),
  kCBLDart_IndexTypeFullText(1);

  final int value;
  const CBLDart_IndexType(this.value);

  static CBLDart_IndexType fromValue(int value) => switch (value) {
        0 => kCBLDart_IndexTypeValue,
        1 => kCBLDart_IndexTypeFullText,
        _ => throw ArgumentError("Unknown value for CBLDart_IndexType: $value"),
      };
}

final class CBLDart_CBLIndexSpec extends ffi.Struct {
  @ffi.Uint8()
  external int typeAsInt;

  CBLDart_IndexType get type => CBLDart_IndexType.fromValue(typeAsInt);

  @imp1.CBLQueryLanguage()
  external int expressionLanguage;

  external imp1.FLString expressions;

  @ffi.Bool()
  external bool ignoreAccents;

  external imp1.FLString language;
}

typedef NativeCBLDart_CBLCollection_CreateIndex = ffi.Bool Function(
    ffi.Pointer<CBLCollection> collection,
    imp1.FLString name,
    CBLDart_CBLIndexSpec indexSpec,
    ffi.Pointer<CBLError> errorOut);
typedef DartCBLDart_CBLCollection_CreateIndex = bool Function(
    ffi.Pointer<CBLCollection> collection,
    imp1.FLString name,
    CBLDart_CBLIndexSpec indexSpec,
    ffi.Pointer<CBLError> errorOut);

/// An opaque 'cookie' representing a registered listener callback. It's
/// returned from functions that register listeners, and used to remove a
/// listener by calling \ref CBLListener_Remove.
typedef CBLListenerToken = imp1.CBLListenerToken;

/// \defgroup query Query @{ \*/ /\*\* A compiled database query.
typedef CBLQuery = imp1.CBLQuery;
typedef NativeCBLDart_CBLQuery_AddChangeListener
    = ffi.Pointer<CBLListenerToken> Function(ffi.Pointer<CBLDatabase> db,
        ffi.Pointer<CBLQuery> query, CBLDart_AsyncCallback listener);
typedef DartCBLDart_CBLQuery_AddChangeListener
    = ffi.Pointer<CBLListenerToken> Function(ffi.Pointer<CBLDatabase> db,
        ffi.Pointer<CBLQuery> query, CBLDart_AsyncCallback listener);
typedef FLSliceResult = imp1.FLSliceResult;

/// A stream for reading a blob's content.
typedef CBLBlobReadStream = imp1.CBLBlobReadStream;
typedef NativeCBLDart_CBLBlobReader_Read = FLSliceResult Function(
    ffi.Pointer<CBLBlobReadStream> stream,
    ffi.Uint64 bufferSize,
    ffi.Pointer<CBLError> outError);
typedef DartCBLDart_CBLBlobReader_Read = FLSliceResult Function(
    ffi.Pointer<CBLBlobReadStream> stream,
    int bufferSize,
    ffi.Pointer<CBLError> outError);

final class CBLDart_ReplicationCollection extends ffi.Struct {
  external ffi.Pointer<CBLCollection> collection;

  external imp1.FLArray channels;

  external imp1.FLArray documentIDs;

  external CBLDart_AsyncCallback pushFilter;

  external CBLDart_AsyncCallback pullFilter;

  external CBLDart_AsyncCallback conflictResolver;
}

/// An opaque object representing the location of a database to replicate with.
typedef CBLEndpoint = imp1.CBLEndpoint;

/// An opaque object representing authentication credentials for a remote
/// server.
typedef CBLAuthenticator = imp1.CBLAuthenticator;

/// Proxy settings for the replicator.
typedef CBLProxySettings = imp1.CBLProxySettings;

final class CBLDart_ReplicatorConfiguration extends ffi.Struct {
  external ffi.Pointer<CBLDatabase> database;

  external ffi.Pointer<CBLEndpoint> endpoint;

  @imp1.CBLReplicatorType()
  external int replicatorType;

  @ffi.Bool()
  external bool continuous;

  @ffi.Bool()
  external bool disableAutoPurge;

  @ffi.UnsignedInt()
  external int maxAttempts;

  @ffi.UnsignedInt()
  external int maxAttemptWaitTime;

  @ffi.UnsignedInt()
  external int heartbeat;

  external ffi.Pointer<CBLAuthenticator> authenticator;

  external ffi.Pointer<CBLProxySettings> proxy;

  external imp1.FLDict headers;

  external ffi.Pointer<FLSlice> pinnedServerCertificate;

  external ffi.Pointer<FLSlice> trustedRootCertificates;

  external ffi.Pointer<CBLDart_ReplicationCollection> collections;

  @ffi.Size()
  external int collectionsCount;
}

/// \defgroup replication Replication @{ \*/ /\*\* A background task that syncs
/// a \ref CBLDatabase with a remote server or peer.
typedef CBLReplicator = imp1.CBLReplicator;
typedef NativeCBLDart_CBLReplicator_Create
    = ffi.Pointer<CBLReplicator> Function(
        ffi.Pointer<CBLDart_ReplicatorConfiguration> config,
        ffi.Pointer<CBLError> errorOut);
typedef DartCBLDart_CBLReplicator_Create = ffi.Pointer<CBLReplicator> Function(
    ffi.Pointer<CBLDart_ReplicatorConfiguration> config,
    ffi.Pointer<CBLError> errorOut);
typedef NativeCBLDart_CBLReplicator_Release = ffi.Void Function(
    ffi.Pointer<CBLReplicator> replicator);
typedef DartCBLDart_CBLReplicator_Release = void Function(
    ffi.Pointer<CBLReplicator> replicator);
typedef NativeCBLDart_CBLReplicator_AddChangeListener = ffi.Void Function(
    ffi.Pointer<CBLDatabase> db,
    ffi.Pointer<CBLReplicator> replicator,
    CBLDart_AsyncCallback listenerId);
typedef DartCBLDart_CBLReplicator_AddChangeListener = void Function(
    ffi.Pointer<CBLDatabase> db,
    ffi.Pointer<CBLReplicator> replicator,
    CBLDart_AsyncCallback listenerId);
typedef NativeCBLDart_CBLReplicator_AddDocumentReplicationListener
    = ffi.Void Function(
        ffi.Pointer<CBLDatabase> db,
        ffi.Pointer<CBLReplicator> replicator,
        CBLDart_AsyncCallback listenerId);
typedef DartCBLDart_CBLReplicator_AddDocumentReplicationListener
    = void Function(
        ffi.Pointer<CBLDatabase> db,
        ffi.Pointer<CBLReplicator> replicator,
        CBLDart_AsyncCallback listenerId);

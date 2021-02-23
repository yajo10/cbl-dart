import 'dart:io' as io;

import 'package:cbl_native/cbl_native.dart';
import 'package:test/test.dart';

void main() {
  test('CblNativeBinary.url returns the correct download url', () {
    final binary = CblNativeBinaries(platform: Platform.linux);

    expect(
      binary.url.toString(),
      'https://github.com/cofu-app/cbl-dart/releases'
      '/${binary.packageName}-v${binary.version}'
      '/download/${binary.packageName}-v${binary.version}-linux.tar.gz',
    );
  });

  test('binary_url script returns the correct download url', () async {
    final result =
        await io.Process.run('dart', ['run', 'cbl_native:binary_url', 'linux']);

    final url = result.stdout as String;

    expect(
      url,
      matches(
        'https://github.com/cofu-app/cbl-dart/releases'
        '/cbl_native-v(.+)/download/cbl_native-v(.+)-linux.tar.gz',
      ),
    );
  });
}
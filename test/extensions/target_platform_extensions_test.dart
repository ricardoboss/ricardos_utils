import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ricardos_utils/ricardos_utils.dart';

void main() {
  test('test', () {
    expect(TargetPlatform.windows.isDesktop, true);
    expect(TargetPlatform.windows.isTouchDevice, false);
    expect(TargetPlatform.windows.isMobile, false);
  });
}

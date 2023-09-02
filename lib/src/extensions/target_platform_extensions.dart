part of ricardos.extensions;

extension TargetPlatformExtensions on TargetPlatform {
  bool get isDesktop {
    return [
      TargetPlatform.windows,
      TargetPlatform.macOS,
    ].contains(this);
  }

  bool get isMobile => !isDesktop;

  bool get isTouchDevice {
    return [
      TargetPlatform.android,
      TargetPlatform.iOS,
      TargetPlatform.fuchsia,
    ].contains(this);
  }
}

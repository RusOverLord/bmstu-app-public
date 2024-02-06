import 'package:platform/platform.dart' as plat;
import 'dart:io' as io show Platform;

Platform get platform => Platform.instance;

class Platform {
  static const instance = Platform._();
  static const I = instance;

  const Platform._();

  String get operatingSystem {
    if (isDesktop) {
      return plat.Platform.android;
    }

    return io.Platform.operatingSystem;
  }

  bool get isLinux => io.Platform.isLinux;

  bool get isMacOS => io.Platform.isMacOS;

  bool get isWindows => io.Platform.isWindows;

  bool get isAndroid => io.Platform.isAndroid;

  bool get isIOS => io.Platform.isIOS;

  bool get isFuchsia => io.Platform.isFuchsia;

  bool get isMobile => isAndroid || isIOS;

  bool get isDesktop => isWindows || isMacOS || isFuchsia || isLinux;

  T mapDevice<T>({
    required T Function() mobile,
    required T Function() desktop,
  }) {
    if (isMobile) {
      return mobile();
    } else {
      return desktop();
    }
  }

  T? mapDeviceOrNull<T>({
    T Function()? mobile,
    T Function()? desktop,
  }) {
    if (isMobile) {
      return mobile?.call();
    } else {
      return desktop?.call();
    }
  }
}

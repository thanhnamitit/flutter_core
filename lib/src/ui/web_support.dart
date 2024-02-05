import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

mixin WebSupport<T extends StatefulWidget> on State<T> {
  static const webThreshold = 1024;

  Widget containerIfWeb({
    required Widget Function(Widget child) wrapper,
    required Widget child,
  }) {
    if (kIsWeb) return wrapper(child);
    return child;
  }

  Widget deviceBuilder({
    required Widget Function() web,
    required Widget Function() mobile,
    Widget Function()? tablet,
  }) {
    if (!kIsWeb) {
      return mobile();
    } else {
      return LayoutBuilder(
        builder: (_, constrains) {
          final width = constrains.maxWidth;
          if (width >= 768) {
            if (tablet != null && width < 1024) {
              return tablet();
            } else {
              return web();
            }
          } else {
            return mobile();
          }
        },
      );
    }
  }
}

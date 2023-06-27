import 'package:flutter/material.dart';

import '../features.dart';

class UiUtils {
  ///Returns entry currently shown
  static OverlayEntry showOverlay({
    required BuildContext context,
    required Widget child,
  }) {
    final overlay = Overlay.of(context);
    final entry = OverlayEntry(
      builder: (context) => child,
    );
    overlay.insert(entry);
    return entry;
  }

  static void showOverlaySnackBar(
      {required BuildContext context, required Widget content}) {
    OverlayEntry? entry;
    entry = UiUtils.showOverlay(
      context: context,
      child: CustomSnackBar(
        onClosedAnimation: () {
          entry!.remove();
        },
        screenSize: MediaQuery.of(context).size,
        child: content,
      ),
    );
  }
}

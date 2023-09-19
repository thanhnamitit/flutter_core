import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'view_model/async.dart';

mixin AsyncSupport<T extends StatefulWidget> on State<T> {
  OverlayEntry? _loadingOverlayEntry;

  void showLoading() {
    _loadingOverlayEntry = OverlayEntry(
      builder: (_) => Container(
        alignment: Alignment.center,
        color: const Color(0xff0b1022).withOpacity(0.7),
        child: LoadingAnimationWidget.threeArchedCircle(
          color: Colors.white70,
          size: 64,
        ),
      ),
    );
    Overlay.of(context).insert(_loadingOverlayEntry!);
  }

  void hideLoading() {
    _loadingOverlayEntry?.remove();
    _loadingOverlayEntry = null;
  }

  void showSnackBar(String text, {Color? color}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(text),
          backgroundColor: color,
        ),
      );
  }

  void showSuccessMessage(String text) {
    showSnackBar(text, color: Colors.green);
  }

  void showErrorMessage(String text) {
    showSnackBar(text, color: Colors.red);
  }

  @override
  void dispose() {
    hideLoading();
    super.dispose();
  }

  void handleAsync(
    Async? async, {
    String? successMessage,
  }) {
    async?.map(
      loading: (_) {
        showLoading();
      },
      success: (_) {
        hideLoading();
        if (successMessage != null) {
          showSuccessMessage(successMessage);
        }
      },
      fail: (_) {
        hideLoading();
        showErrorMessage(_.exception.message);
      },
    );
  }

  void handleCommonAsyncFlow(
    Async? next, {
    String? successMessage,
  }) {
    handleAsync(
      next,
      successMessage: successMessage,
    );
  }
}

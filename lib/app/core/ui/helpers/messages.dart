import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

mixin Messages<T extends StatefulWidget> on State<T> {
  showError(String message) {
    showTopSnackBar(
      Overlay.of(context)!,
      CustomSnackBar.error(message: message),
    );
  }

  showInfo(String message) {
    showTopSnackBar(
      Overlay.of(context)!,
      CustomSnackBar.info(message: message),
    );
  }

  showSuccess(String message) {
    showTopSnackBar(
      Overlay.of(context)!,
      CustomSnackBar.success(message: message),
    );
  }
}

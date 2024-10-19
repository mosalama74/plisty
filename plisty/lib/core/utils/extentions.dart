import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  /// Navigate to a new page
  void navigateTo(Widget page) {
    Navigator.of(this).push(
      MaterialPageRoute(builder: (_) => page),
    );
  }

  /// Navigate to a new page and remove all previous routes
  void navigateToAndRemoveAll(Widget page) {
    Navigator.of(this).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => page),
      (route) => false,
    );
  }

  /// Navigate back to the previous screen
  void navigateBack() {
    Navigator.of(this).pop();
  }
}

import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomSpacer extends StatelessWidget {
  const CustomSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: cDarkWhite1Color,
    );
  }
}

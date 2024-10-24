import 'package:flutter/material.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/core/utils/text_styles.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const GradientText({super.key,required this.text, this.style,});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [cPrimaryColor, cSecondaryColor],
              ).createShader(bounds);
            },
      child: Text(
        text,
        style:style ?? ts12Black600.copyWith(color: cWhiteColor),maxLines: 1,overflow: TextOverflow.ellipsis,// Set a fallback color
      ),
    );
  }
}
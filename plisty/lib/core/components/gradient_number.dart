import 'package:flutter/material.dart';

class GradientOutlineText extends StatelessWidget {
  final String text;
  final double strokeWidth;
  final double fontSize;

  const GradientOutlineText({
    super.key,
    required this.text,
    this.strokeWidth = 2.0,
    this.fontSize = 64.0,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          colors: [
            Color(0xffFF2FB7),
           /*  Color(0xffFF18CD),
            Color(0xffFF00E4), */
            Color(0xff9C5FEE),
          ],
         // stops: [0.12, 0.32, 0.52, 0.71],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: TextStyle(
        
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = strokeWidth,
            decorationStyle: TextDecorationStyle.wavy
        ),
      ),
    );
  }
}

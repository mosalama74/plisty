import 'package:flutter/material.dart';


class GradientIcon extends StatelessWidget {
  final IconData icon;
  final double size;

  const GradientIcon({
    super.key,
    required this.icon,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient (
          colors: [
            Color(0xffFF2FB7),
            Color(0xff00F7FF),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.12,1.0],
        ).createShader(bounds);
      },
      child: Icon(
        icon,
        size: size,
        color: Colors.white, // Placeholder color
      ),
    );
  }
}

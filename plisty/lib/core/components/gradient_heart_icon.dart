import 'package:flutter/material.dart';
import 'package:plisty/core/components/gradient_icon.dart';

class GradientHeartIcon extends StatelessWidget {
  const GradientHeartIcon({super.key, required this.onTap});

final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const GradientIcon(
        icon: Icons.favorite,
        size: 20,
      ),
    );
  }
}

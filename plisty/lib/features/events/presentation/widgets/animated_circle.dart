import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedCircle extends StatefulWidget {
  const AnimatedCircle({super.key,required this.borderColor,required this.fillColor});
  final Color borderColor;
  final Color fillColor;

  @override
  State<AnimatedCircle> createState() => _AnimatedCircleState();
}

class _AnimatedCircleState extends State<AnimatedCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      height: 20.h,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: widget.borderColor,
          width: 1,
        ),
      ),
      child: Container(
        width: 20.w,
        height: 20.h,
        decoration: BoxDecoration(
          color: widget.fillColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
  
}

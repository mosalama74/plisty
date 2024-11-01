import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';

class AnimatedCircle extends StatefulWidget {
  const AnimatedCircle({super.key});

  @override
  State<AnimatedCircle> createState() => _AnimatedCircleState();
}

class _AnimatedCircleState extends State<AnimatedCircle> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      height: 20.h,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: _isSelected ? cPrimaryColor : cDarkWhite2Color,
          width: 1,
        ),
      ),
      child: InkWell(
        onTap: (){
          setState(() {
            _isSelected = !_isSelected;
          });
        },
        child: Container(
          width: 20.w,
          height: 20.h,
          decoration: BoxDecoration(
            color: _isSelected ? cPrimaryColor :Colors.transparent,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';

import '../../../../core/utils/app_gradients.dart';

class GradientChecBox extends StatefulWidget {
  const GradientChecBox({
    super.key,
  });

  @override
  State<GradientChecBox> createState() => _GradientChecBoxState();
}

class _GradientChecBoxState extends State<GradientChecBox> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16.w,
      height: 16.h,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        gradient: bookingDateGradient,
        borderRadius: BorderRadius.circular(1.r),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            _isPressed = !_isPressed;
          });
        },
        child: Stack(
          children: [
            Container(
           padding: EdgeInsets.all(1.r),
              decoration: BoxDecoration(
                color: cCheckBoxBgColor,
                borderRadius: BorderRadius.circular(1.r),
              ),
            ),
            Center(
              child: Container(
                width: 8.w,
                height: 8.h,
                decoration: getInnerDecoration(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Decoration? getInnerDecoration() {
    if (_isPressed) {
      return BoxDecoration(
        gradient: bookingDateGradient,
      );
    } else {
      return const BoxDecoration(
        color: cCheckBoxBgColor,
      );
    }
  }
}

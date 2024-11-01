import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/features/events/presentation/widgets/animated_circle.dart';

import '../../../../core/utils/text_styles.dart';

class PayUsingPoints extends StatefulWidget {
  const PayUsingPoints({super.key});

  @override
  State<PayUsingPoints> createState() => _PayUsingPointsState();
}

class _PayUsingPointsState extends State<PayUsingPoints> {
  bool _isSelected = false;
  void togglePressed() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:togglePressed ,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: cDarkGreyColor,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                 AnimatedCircle(
                     borderColor: _isSelected ? cPrimaryColor : cDarkWhite2Color,
                    fillColor: _isSelected ? cPrimaryColor : Colors.transparent,
                ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'الدفع باستخدام النقاط',
                      style: ts14White400,
                    ),
                  ],
                ),
                Text(
                  '100.00 نقطة',
                  style: ts12White400.copyWith(color: cPrimaryColor),
                ),
              ],
            ),
             SizedBox(
                      height: 10.h,
                    ),
            Text(
              'الرصيد: 250.00',
              style: ts12White400.copyWith(color: cPrimaryColor),
            ),
          ],
        ),
      ),
    );
  }
}

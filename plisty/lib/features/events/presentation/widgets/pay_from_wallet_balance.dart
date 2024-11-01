import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/features/events/presentation/widgets/animated_circle.dart';

import '../../../../core/utils/text_styles.dart';

class PayFromWalletBalance extends StatefulWidget {
  const PayFromWalletBalance({super.key});

  @override
  State<PayFromWalletBalance> createState() => _PayFromWalletBalanceState();
}

class _PayFromWalletBalanceState extends State<PayFromWalletBalance> {
  bool _isSelected = false;
void togglePressed() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: togglePressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: cDarkGreyColor,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                 AnimatedCircle(
                    borderColor: _isSelected ? cPrimaryColor : cDarkWhite2Color,
                  fillColor: _isSelected ? cPrimaryColor : Colors.transparent,
                ),
                SizedBox(
                  width: 10.w,
                ),
                  Text(
                  'ادفع من رصيد المحفظة',
                  style: ts14White400,
                ),
              ],
            ),
             SizedBox(
                  height: 10.h,
                ),
            Text(
                  'الرصيد: 250.00 درهم',
                  style: ts12White400.copyWith(color: cPrimaryColor),
                ),
          ],
        ),
      ),
    );
  }
}

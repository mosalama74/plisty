
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../../../../core/utils/app_colors.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildOtpElement(context),
        buildOtpElement(context),
        buildOtpElement(context),
        buildOtpElement(context),
      ],
    );
  }

  Widget buildOtpElement(context) {
    return Container(
     width: 70.w,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.all(
          Radius.circular(8.r),
        ),
        gradient: const LinearGradient(
            colors: [
              cOtp1Color,
              Color(0xFF00F7FF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.9]),
       
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          decoration: InputDecoration(
              filled: true,
              hintText: '-',
              hintStyle: const TextStyle(color: cHintColor),
              fillColor: Theme.of(context).scaffoldBackgroundColor,
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide.none,
              ),
            contentPadding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 10.w),
             ),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          cursorColor: cPrimaryColor,
          style: ts16White700,
        ),
      ),
    );
  }
}

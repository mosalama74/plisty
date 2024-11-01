
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_gradients.dart';

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
        gradient: otpGradient,
       
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
              fillColor: Colors.transparent.withOpacity(.8),
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide.none,
              ),
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

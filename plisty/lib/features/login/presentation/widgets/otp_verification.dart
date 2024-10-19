import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildOtpElement(context),
          
          buildOtpElement(context),
          
          buildOtpElement(context),
          
          buildOtpElement(context),
        ],
      ),
    );
  }

  Widget buildOtpElement(context) {
    return Container(
      width: 76.w,
      height: 50.h,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.all(
          Radius.circular(8.r),
        ),
       gradient:  const LinearGradient(
              colors:
                  [
                    cPrimaryColor,
                    cSecondaryColor,
                  ],
              begin:Alignment.bottomLeft,
              end:Alignment.bottomRight,stops:[0.2,0.9] ),
        shape: BoxShape.rectangle,
      ),
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          hintText: '-',
          border: InputBorder.none,
        hintStyle: const TextStyle(color: cHintColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
       
        cursorColor: cPrimaryColor,

      ),
    );
  }
}

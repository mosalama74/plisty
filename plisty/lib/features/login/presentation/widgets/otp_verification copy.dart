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
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadiusDirectional.all(
            Radius.circular(24),
          ),
           border: Border.all(width: 1,color: cGreyColor),
        ),
        child: TextFormField(
          onChanged: (value){
            if(value.length == 1){
              FocusScope.of(context).nextFocus();
            }
          },
          decoration:  InputDecoration(
            hintText: '0',
            border: InputBorder.none,
          hintStyle: TextStyle(fontSize: 15.sp,color: cGreyColor),
          ),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
      
      
        ),
      );
  }
}

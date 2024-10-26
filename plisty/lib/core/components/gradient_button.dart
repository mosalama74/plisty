import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../utils/app_colors.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key, required this.btnName});
final String btnName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
         gradient:const LinearGradient(
              colors: [
                cPrimaryColor,
                cSecondaryColor,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.1, 0.8]),
      ),
      child: Text(btnName,style:ts12White400,),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../../../../../core/utils/app_colors.dart';

class SearchTffIconBtn extends StatelessWidget {
  const SearchTffIconBtn({super.key, this.suffixIcon, this.prefixIcon, this.onPressed, this.hintText,});
  final IconData? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsetsDirectional.only(start: 10),
            decoration: BoxDecoration(
              color: cDarkGreyColor,
             
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: hintText?? 'بحث',
                hintStyle: ts14White400.copyWith(color: cDarkWhite2Color),
                suffixIcon: Icon(
                   suffixIcon ?? Icons.mic_none_outlined,
                  color: cMicColor,
                  size: 25,
                ),
                prefixIcon: prefixIcon, 
                prefixIconColor: cMicColor,
                border: InputBorder.none,
                
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius:  BorderRadius.circular(8.r),
             gradient: const LinearGradient(
              colors: [
                cPrimaryColor,
                cSecondaryColor,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.1, 0.8]),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: SvgPicture.asset(
              'assets/icons/mi_filter.svg',
              color: cWhiteColor,
              width: 24.w,
            ),
          ),
        ),
      ],
    );
  }
}

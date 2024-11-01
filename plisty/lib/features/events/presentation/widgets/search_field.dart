import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, this.suffixIcon, this.prefixIcon, this.hintText});
  final IconData? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                hintText: hintText ?? 'بحث',
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
          );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class MainDropDownButton extends StatefulWidget {
  const MainDropDownButton({super.key});

  @override
  State<MainDropDownButton> createState() => _MainDropDownButtonState();
}

class _MainDropDownButtonState extends State<MainDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 46.h,
              decoration: BoxDecoration(
                  color: cDarkGreyColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              child: DropdownButton(
                items: [],
                onChanged: (value) {},
                isExpanded: true,
                padding: EdgeInsets.symmetric(vertical: 13.5.h,horizontal: 15.w),
                borderRadius: BorderRadius.circular(8.r),
                hint: Text(
                  'اختر',
                  style: ts14White400.copyWith(
                    color: cDarkWhite2Color,
                  ),
                ),
                dropdownColor: cDarkGreyColor,
                iconSize: 25.sp,
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: cDarkWhite2Color,
                ),
                underline: const SizedBox(),
              ),
            );
  }
}
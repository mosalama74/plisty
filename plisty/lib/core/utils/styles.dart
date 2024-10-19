import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

InputBorder mainEnabledInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none);

BoxDecoration dWhite12Radius = BoxDecoration(
  color: cWhiteColor,
  borderRadius: BorderRadius.circular(12.r),
);
BoxDecoration dGrey8Radius = BoxDecoration(
  color: cLightGreyColor,
  borderRadius: BorderRadius.circular(8.r),
);
BoxDecoration dWhite16RadiusWithShadow = BoxDecoration(
  color: cWhiteColor,
  boxShadow: const [
    BoxShadow(
      color: Color(0x1A000000), // Shadow color with 10% opacity
      spreadRadius: 0, // No spread
      blurRadius: 20, // Blur radius
      offset: Offset(0, 4), // Offset in x and y direction
    ),
  ],
  borderRadius: BorderRadius.circular(16.r),
);
BoxDecoration dWhite24RadiusWithShadow = BoxDecoration(
  color: cWhiteColor,
  boxShadow: const [
    BoxShadow(
      color: Color(0x1A000000), // Shadow color with 10% opacity
      spreadRadius: 0, // No spread
      blurRadius: 20, // Blur radius
      offset: Offset(0, 4), // Offset in x and y direction
    ),
  ],
  borderRadius: BorderRadius.circular(24.r),
);

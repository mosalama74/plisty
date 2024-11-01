import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../../../../core/utils/app_colors.dart';

class TimeItem extends StatelessWidget {
  const TimeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'الوقت',
          style: ts14White400.copyWith(color: cPrimaryColor),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          padding: const EdgeInsets.all(13.5),
          decoration: BoxDecoration(
            color: cDarkGreyColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    color: cDarkWhite2Color,
                    size: 16.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    '12:15',
                    style: ts14White400.copyWith(color: cDarkWhite2Color),
                  ),
                ],
              ),
              InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: cDarkWhite2Color,
                    size: 12.h,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

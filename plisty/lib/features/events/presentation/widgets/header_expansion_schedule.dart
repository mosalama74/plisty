import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class HeaderExpansionSchedule extends StatelessWidget {
  const HeaderExpansionSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
                    title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.watch_later_outlined,
                      color: cWhiteColor,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'الجدول الزمني',
                      style: ts14White400,
                    ),
                  ],
                ),);
  }
}
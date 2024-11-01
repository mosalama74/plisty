import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/components/main_elevated_gradient_button.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../../../../core/components/custom_spacer.dart';
import '../../../../core/utils/app_colors.dart';

class TimeBtmSheet extends StatelessWidget {
  const TimeBtmSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cLightBlackColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
              top: 12.h, start: 20.w, end: 20.w, bottom: 43.69.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'أي توقيت تفضل؟',
                style: ts16White500.copyWith(fontFamily: 'Axiforma'),
              ),
              
              timeItem(statusColor: cErrorColor),
              const CustomSpacer(),
              timeItem(),
              const CustomSpacer(),
              timeItem(),
              const CustomSpacer(),
              timeItem(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 44.w),
                child: MainElevatedGradientButton(onPressed: (){}, label: 'اختر'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget timeItem(
      {String? time,
      String? attendanceTime,
      String? status,
      Color? statusColor}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            time ?? '12:45_ 12:15',
            style: ts16White700.copyWith(color: cPrimaryColor),
          ),
          Text(
            status ?? 'بيعت بالكامل',
            style: ts16White700.copyWith(color: statusColor ?? cWhiteColor),
          ),
          Column(
            children: [
              Text(
                attendanceTime ?? 'وقت الحضور هو',
                style: ts16White400,
              ),
              Text(
                ' 1:25',
                style: ts16White400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

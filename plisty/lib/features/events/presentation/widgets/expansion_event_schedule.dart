import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_gradients.dart';
import '../../../../core/utils/text_styles.dart';

class ExpansionScheduleBody extends StatelessWidget {
  const ExpansionScheduleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      color: cExpanionBodyColor,
      child: Column(
        children: List.generate(
          2,
          (index) => scheduleBody(),
        ),
      ),
    );
  }

  Widget scheduleBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 20.h,
                width: 20.w,
                decoration: BoxDecoration(
                  gradient: gradientCircle,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                '4 أكتوبر (الجمعة)',
                style: ts14White700,
              ),
            
            ],  
          ),
            SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 8.w),
                child: Row(
                  children: [
                    Container(
                      width: 1.w,
                      height: 77.h,
                      color: cMicColor,
                    ),
                     SizedBox(
                  width: 26.w,
                ),
                    Column(
                      children: List.generate(
                        3,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            '14:00 م - النشاط 1',
                            style: ts14White400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}

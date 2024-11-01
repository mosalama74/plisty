import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/circle_image.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_gradients.dart';
import '../../../../core/utils/text_styles.dart';

class EventOrganizerInfo extends StatelessWidget {
  const EventOrganizerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleImage(
          height: 38.h,
          width: 38.w,
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'اسم منظم الحدث',
                          style: ts12White700.copyWith(color: cPrimaryColor),
                        ),
                        InkWell(
                          onTap:(){},
                          child: Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                            decoration: BoxDecoration(                      
                              borderRadius: BorderRadius.circular(4.r),
                              gradient: gradientButton,
                            ),
                            child: Text(
                            '+متابعة',
                            style: ts12White400,
                          ),
                          ),
                        ),
                      ],
                    ),
                     Text(
                          'منسقة حفلات ديجي',
                          style: ts10White400.copyWith(color: cDarkWhiteColor2),
                        ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

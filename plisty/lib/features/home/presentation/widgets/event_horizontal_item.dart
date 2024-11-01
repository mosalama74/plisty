import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/gradient_button.dart';
import '../../../../core/components/gradient_heart_icon.dart';
import '../../../../core/components/gradient_text.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class EventHorizontalItem extends StatelessWidget {
  const EventHorizontalItem(
      {super.key,
      required this.img,
      required this.eventName,
      required this.eventSort,
      required this.eventDate,
      required this.eventLocation});

  final String img;
  final String eventName;
  final String eventSort;
  final String eventDate;
  final String eventLocation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width - 50.w,
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.61.h),
          decoration: BoxDecoration(
            color: cNavColor,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 82.77.w,
                height: 72.77.h,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10.h,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GradientText(
                          text: eventName,
                          style: ts14White700,
                        ),
                        GradientHeartIcon(onTap: (){},),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: cPrimaryColor,
                          size: 16.h,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          eventDate,
                          style: ts12White400.copyWith(color: cDarkWhiteColor2),
                          maxLines: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.location_on_sharp,
                              color: cPrimaryColor,
                              size: 16.h,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              eventLocation,
                              style: ts12White400.copyWith(
                                  color: cDarkWhiteColor2),
                              maxLines: 1,
                            ),
                          ],
                        ),
                        GradientButton(
                          btnName: eventSort,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: -20,
          child: Transform.rotate(
            angle: 45 * 3.14159 / 180,
            child: Container(
              padding: EdgeInsetsDirectional.only(top: 4.79.h,start:15.w),
              height: 24.h,
              width: 80,
              decoration: BoxDecoration(
                color: cRedColor.withOpacity(1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4.r),
                  topLeft: Radius.circular(4.r),
                ),
              ),
              child: Text('20%-',style: ts12White400,),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/gradient_button.dart';
import '../../../../core/components/gradient_icon.dart';
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
    return Container(
      width: MediaQuery.of(context).size.width - 59.w,
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.61.h),
      decoration: BoxDecoration(
        color: cNavColor,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
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
             
            ],
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
                      style: ts14Black700.copyWith(color: cWhiteColor),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const GradientIcon(icon: Icons.favorite,size: 20,),
                    ),
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
                      style: ts12Black400.copyWith(color: cDarkWhiteColor2),
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
                          style: ts12Black400.copyWith(color: cDarkWhiteColor2),
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
    );
  }
}

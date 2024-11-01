import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_gradients.dart';
import '../../../../core/utils/text_styles.dart';
import 'calender_btm_sheet.dart';

class BookingDateItem extends StatefulWidget {
  const BookingDateItem({super.key});

  @override
  State<BookingDateItem> createState() => _BookingDateItemState();
}

class _BookingDateItemState extends State<BookingDateItem> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'التاريخ',
          style: ts14White400.copyWith(color: cPrimaryColor),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 68.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => itemBody(index),
            separatorBuilder: (context, index) => SizedBox(
              width: 13.w,
            ),
            itemCount: 5,
          ),
        ),
      ],
    );
  }

  Widget itemBody(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
          if(index == 4){
            showModalBottomSheet(
      context: context,
      builder: (context) {
        return const CalendarBottomSheet();
      },
    );
          }
        });
      },
      child: Container(
        height: 63.h,
        width: 66.w,
        padding: EdgeInsets.all(index != selectedIndex ? 1 : 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          gradient: index != selectedIndex ? bookingDateGradient : null,
        ),
        child: Container(
          padding: EdgeInsetsDirectional.only(
              top: 4.h, bottom: 6.h, start: 11.5.w, end: 16.5.w),
          decoration: BoxDecoration(
            color: cDarkGreyColor,
            gradient: index == selectedIndex ? gradientButton : null,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: index != 4
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'أربعاء',
                      style: ts12White400.copyWith(
                        color: cDateColor,
                      ),
                    ),
                    Text(
                      '12',
                      style: ts14White400,
                    ),
                    Text(
                      'سبتمبر',
                      style: ts14White400,
                    ),
                  ],
                )
              : const Center(
                  child: Icon(
                    Icons.calendar_month_outlined,
                    color: cDarkWhite2Color,
                  ),
                ),
        ),
      ),
    );
  }
}

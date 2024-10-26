import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/components/gradient_text.dart';
import 'package:plisty/features/home/presentation/widgets/favourite_icon.dart';

import '../../../../core/components/gradient_button.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class NearbyAndUpcomingEventsItem extends StatelessWidget {
  const NearbyAndUpcomingEventsItem(
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 150.h,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                image: DecorationImage(
                  image: NetworkImage(
                    img,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
           const FavouriteIcon(),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GradientText(
              text: eventName,
            ),
            GradientButton(
              btnName:eventSort,
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
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
                  style: ts12White400.copyWith(color: cDarkWhiteColor2),
                  maxLines: 1,
                ),
              ],
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
          ],
        ),
      ],
    );
  }
}

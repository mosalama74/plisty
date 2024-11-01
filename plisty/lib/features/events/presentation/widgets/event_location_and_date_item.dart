import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class EventLocationAndDateItem extends StatelessWidget {
  const EventLocationAndDateItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              'دبي، برج خليفة',
              style: ts12White400,
              maxLines: 1,
            ),
          ],
        ),
         Text(
              '2 ديسمبر، 12:00 م',
              style: ts12White400,
              maxLines: 1,
            ),
      ],
    );
  }
}

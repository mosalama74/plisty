import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/circle_image.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleImage(),
        SizedBox(
          width: 10.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'أهلاً بك، مستخدم',
              style: ts20White400,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
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
                  'دبي، الإمارات العربية المتحدة',
                  style: ts12White400.copyWith(color: cDarkWhite2Color),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: cDarkWhite2Color,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

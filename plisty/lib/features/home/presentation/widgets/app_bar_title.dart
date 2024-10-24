import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50.w,
          height: 50.h,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/9c11/4d62/6f5c893a69ba0f309ba130f0ef7a6c22?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GZSxlSRwK8t0WQHSB8jj-LPk6dEmomfCa9ZgP249TxHvee9zjOvtjiUupwVtUm2KoojhWh7oj5MMIZ96pXynS8Tq28PS~ToJa0t2n-ogW6O0I0-rL35QOaMQ9r7oiuD6qgy9KAXnIhJsxg2x9F~6EwJ~CdzYyNBEi-s2aOkUpgvH9RHYPkXPDkTt9v77CS9Se5zfV9Dl0DfxSfOTdKf9yY4g3coU5RhPpRUr7GA1ZosHGSlnUWVacqfvVUw-PkeTsWAxoHqsNiLbicbbe5YFuKwwM93qHYCg1BPetO03YajB8XRxHyhw4umTqQuVkpjQXHS2-s846J8OWVuiaVPzJw__',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'أهلاً بك، مستخدم',
              style: ts20Black400.copyWith(color: cWhiteColor),
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
                  style: ts12Black400.copyWith(color: cDarkWhite2Color),
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_gradients.dart';
import '../../../../core/utils/text_styles.dart';

class OrganizerItem extends StatelessWidget {
  const OrganizerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: List.generate(5,(index) => Padding(
      padding: EdgeInsetsDirectional.only(bottom: index!=4 ? 10.h : 0),
      child: itemBody(),
    ),),);
  }

  Widget itemBody() {
    return Row(
    children: [
      Container(
        width: 64.w,
        height: 64.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          image: const DecorationImage(
            image: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/6ccc/e0c5/3b8e64af35280dd019688a663a8bf112?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Cy8N4f44E4uzuRP6~QMyeNQBsUPC8~83QWvpSQ9IEuSs8SJqsO7SNWMhFlOvAARxDeJZx6Y8SJlCBBl0dc9WvHkDtduFFh1qCcXaMrr8X1NkxqUjaK8Ek7r5wjmDg3ji~9wVAChI7KBq8ZAWSu4It2GvS-YBKdIgm-30sFn0oFMfe5cT8WuuKoLj4qT4SqmtsNEm0rZ4sRGkSD4w2XPAqhsVgb5ne6YJVsJoY1GF3yRmBNXhuOrKVNZjuLasZXDx6EJpuZN8LFKeVrrQuZGy~0~9DZzQUF0EngAZumV1OUwyVkUwzOgHQJAtAGj5HJO2LCWkYO6VFk4Vz6jlal1PJA__',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(
        width: 10.w,
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ماريا',
                    style: ts16White300,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Perferct',
                    style: ts12White300,
                  ),
                ],
              ),
            ),
          InkWell(
            onTap:(){},
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: gradientButton,
              ),
              child: const Icon(Icons.play_arrow_rounded, color: cWhiteColor,),
            ),
          ),
          ],
        ),
      ),
    ],
  );
  }
}

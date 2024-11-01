import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 200.h,
          width: MediaQuery.sizeOf(context).width,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/map.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 9.73.h,
        ),
        InkWell(
          onTap: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'الحصول على الوجهة',
                style: ts14White600.copyWith(color: cPrimaryColor),
              ),
              SizedBox(
                width: 10.w,
              ),
              SvgPicture.asset(
                'assets/icons/quill_link-out.svg',
                color: cPrimaryColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}

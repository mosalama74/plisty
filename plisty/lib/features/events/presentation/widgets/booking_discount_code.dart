import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/features/events/presentation/pages/discount_code_screen.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class BookingDiscountCode extends StatelessWidget {
  const BookingDiscountCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: cDarkGreyColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/discount-shape1.svg',),
          SizedBox(width: 10.w,),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('كود الخصم',style: ts14White400,),
                    Text('لديك 1 كود خصم فعّال يمكنك استخدامه',style: ts12White400,),
                  ],
                ),
                InkWell(
                  onTap: () {
                    context.navigateTo(const DiscountCodeScreen());
                  },
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: cDarkWhite2Color,
                    size: 12.h,
                  )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

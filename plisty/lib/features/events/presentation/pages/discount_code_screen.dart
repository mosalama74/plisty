import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plisty/core/components/main_elevated_gradient_button.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/core/utils/text_styles.dart';
import '../../../../core/utils/app_colors.dart';

class DiscountCodeScreen extends StatelessWidget {
  const DiscountCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200.w,
        leading: Padding(
          padding: EdgeInsetsDirectional.only(start: 24.w),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  context.navigateBack();
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: cWhiteColor,
                  size: 12.w,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'كود الخصم',
                style: ts16White400,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w,end: 24.w, top: 16.h,bottom:43.69.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: List.generate(
                  3,
                  (index) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/images/discount_card.svg',
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
            padding: EdgeInsetsDirectional.only(start: 40.5.w, end: 39.5.w),
            child: MainElevatedGradientButton(
                onPressed: () {}, label: 'تفعيل'),
                          ),
            
              
           
          ],
        ),
      ),
    );
  }
}

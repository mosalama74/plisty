import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/components/main_elevated_gradient_button.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../../../../core/utils/app_strings.dart';

class BtmSheetSuccessErrorPayment extends StatelessWidget {
  const BtmSheetSuccessErrorPayment({super.key, this.isSuccess=false});
final bool? isSuccess;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsetsDirectional.only(start: 64.5.w, end: 63.5.w, top: 30.87.h,bottom: 43.69.h),
      decoration: BoxDecoration(
        color: cBlackColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.r),
          topRight: Radius.circular(8.r),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           Image.asset(
             isSuccess! ? 'assets/images/success.png' : 'assets/images/error.png',
              width: 150.w,
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
             isSuccess! ? 'تمت العملية بنجاح!' : 'عذرًا! حدث خطأ ما.',
              style: ts16White400.copyWith(color:isSuccess! ?cSuccessMsg : cErrorColor),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              isSuccess! ? 'تم الحجز بنجاح، نتمنى لك وقتاً ممتعاً في الفعالية' : AppStrings.paymentError,
              style: ts14White400,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 28.29.h,
            ),
            MainElevatedGradientButton(onPressed: () {
              if(isSuccess!){
        
              }else {
                context.navigateBack();
              }
            }, label: isSuccess! ? 'تفاصيل الحجز' : 'إعادة المحاولة'),
          ],
        ),
      ),
    );
  }
}

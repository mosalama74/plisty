import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/components/main_elevated_gradient_button.dart';
import 'package:plisty/core/utils/extentions.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';
import '../widgets/booking_discount_code.dart';
import '../widgets/booking_invoice_details.dart';
import '../widgets/btm_sheet_success_payment.dart';
import '../widgets/credit_card_item.dart';
import '../widgets/custom_gradient_numbers.dart';
import '../widgets/pay_from_wallet_balance.dart';
import '../widgets/pay_later_item.dart';
import '../widgets/pay_using_points.dart';
import '../widgets/payment_item.dart';

class EventsPayment extends StatelessWidget {
  const EventsPayment({super.key});

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
                'الدفع',
                style: ts16White400,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsetsDirectional.only(top: 16.h, start: 24.w, end: 24.w, bottom: 43.69.h),
          child: Column(
            children: [
              const PaymentItem(),
              SizedBox(
                height: 16.h,
              ),
              const CreditCardItem(),
              SizedBox(
                height: 16.h,
              ),
              const PayLaterItem(),
              SizedBox(
                height: 16.h,
              ),
              const PayFromWalletBalance(),
              SizedBox(
                height: 16.h,
              ),
              const PayUsingPoints(),
              SizedBox(
                height: 70.85.h,
              ),
              const BookingDiscountCode(),
              SizedBox(
                height: 10.h,
              ),
              const BookingInvoiceDetails(),
               SizedBox(
                height: 20.36.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:40.5.w),
                child: MainElevatedGradientButton(onPressed: (){
                  showModalBottomSheet(context: context, builder:(context) => const BtmSheetSuccessErrorPayment(isSuccess: false,), );
                }, label: 'ادفع الآن'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
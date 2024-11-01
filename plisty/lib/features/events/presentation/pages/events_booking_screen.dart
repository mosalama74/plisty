import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/components/main_elevated_gradient_button.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/features/events/presentation/pages/events_payment.dart';
import 'package:plisty/features/events/presentation/widgets/gradient_chec_box.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';
import '../widgets/booking_date_item.dart';
import '../widgets/booking_discount_code.dart';
import '../widgets/booking_invoice_details.dart';
import '../widgets/booking_tickets_item.dart';
import '../widgets/booking_time_item.dart';

class EventsBookingScreen extends StatelessWidget {
  const EventsBookingScreen({super.key});

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
                'الحجز',
                style: ts16White400,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BookingDateItem(),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: const TimeItem(),
              ),
              SizedBox(
                height: 16.h,
              ),
              const BookingTicketsItem(
                isExistAdditions: true,
                ticketType: 'تذكرة عادية',
              ),
              SizedBox(
                height: 16.h,
              ),
              const BookingTicketsItem(
                isExistAdditions: false,
                ticketType: 'تذكرة عادية - أطفال',
              ),
              SizedBox(
                height: 16.h,
              ),
              const BookingTicketsItem(
                isExistAdditions: false,
                ticketType: 'تذكرة VIP',
              ),
              SizedBox(
                height: 16.h,
              ),
              const BookingTicketsItem(
                isExistAdditions: false,
                ticketType: 'تذكرة VIP - أطفال',
              ),
              SizedBox(
                height: 16.h,
              ),
              const BookingTicketsItem(
                isExistAdditions: false,
                ticketType: 'تذكرة Gold',
              ),
              SizedBox(
                height: 16.h,
              ),
               Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const GradientChecBox(),
                      SizedBox(width: 10.w,),
                      Text(
                        'أوافق على',
                        style: ts12White400,
                      ),
                      Text(
                        'سياسة الحفل',
                        style: ts12White400.copyWith(color: cPrimaryColor),
                      ),
                    ],
                  ),
              SizedBox(
                height: 10.28.h,
              ),
              const BookingDiscountCode(),
              SizedBox(
                height: 10.h,
              ),
              const BookingInvoiceDetails(),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    start: 40.5.w, end: 39.5.w, top: 20.44.h, bottom: 20.44.h),
                child: MainElevatedGradientButton(
                    onPressed: () {
                      context.navigateTo(const EventsPayment());
                    },
                    label: 'المتابعة'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class BookingInvoiceDetails extends StatelessWidget {
  const BookingInvoiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cDarkGreyColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'تفاصيل الفاتورة',
            style: ts16White700,
          ),
          detailsItem(title: 'قيمة التذاكر',value: '105.00+',),
          detailsItem(title: 'الخصم',value: '0.00',),
          detailsItem(title: 'ضريبة',value: '+1.00',),
          detailsItem(title: 'المجموع',value: '106.00 درهم',titleStyle: ts16White700,valueStyle: ts16White700),
        ],
      ),
    );
  }

  Widget detailsItem({required String title,required String value,TextStyle? titleStyle,TextStyle? valueStyle}) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Text(
          title,
          style:titleStyle?? ts14White400,
        ),
           Text(
          value,
          style:valueStyle?? ts14White400,
        ),
       ],);
  }
}

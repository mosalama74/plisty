import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/text_styles.dart';


class HeaderExpansionTicketType extends StatelessWidget {
  const HeaderExpansionTicketType({super.key, this.ticketType, this.ticketPrice});
final String? ticketType;
final String? ticketPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsetsDirectional.only(start: 16.w,top: 16.h,bottom: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
           ticketType?? 'تذكرة عادية',
            style: ts14White400,
          ),
          Text(
           ticketPrice?? '105.00 درهم',
            style: ts14White700,
          ),
        ],
      ),
    );
  }
}

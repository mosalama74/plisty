import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/custom_check_box.dart';
import '../../../../core/utils/text_styles.dart';

class AdditionsOnBookingTickets extends StatelessWidget {
  const AdditionsOnBookingTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'الإضافات',
          style: ts14White700,
        ),
        SizedBox(
          height: 10.h,
        ),
        itemBody(),
        SizedBox(
          height: 10.h,
        ),
         itemBody(),
      ],
    );
  }

  Widget itemBody() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomCheckBox(
            checkBoxLable: 'دخول وراء الكواليس',
          ),
          Text(
            '+10.00 درهم',
            style: ts12White400,
          ),
        ],
      );
  }
}

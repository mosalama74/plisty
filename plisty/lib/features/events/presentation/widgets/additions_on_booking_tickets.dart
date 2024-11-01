import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/main_check_box_item.dart';
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
        const MainCheckBoxItem(),
        SizedBox(
          height: 10.h,
        ),
        const MainCheckBoxItem(),
      ],
    );
  }


}

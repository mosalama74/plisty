import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/events/presentation/widgets/gradient_chec_box.dart';
import '../utils/text_styles.dart';

class MainCheckBoxItem extends StatelessWidget {
  const MainCheckBoxItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const GradientChecBox(),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'دخول وراء الكواليس',
              style: ts12White400,
            ),
          ],
        ),
        Text(
              '+10.00 درهم',
              style: ts12White400,
            ),
      ],
    );
  }
}

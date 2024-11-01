import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/features/events/presentation/widgets/animated_circle.dart';

import '../../../../core/utils/text_styles.dart';

class PaymentItem extends StatefulWidget {
  const PaymentItem({super.key});

  @override
  State<PaymentItem> createState() => _PaymentItemState();
}

class _PaymentItemState extends State<PaymentItem> {
     bool _isTaped = false;
  void togglePressed() {
    setState(() {
      _isTaped = !_isTaped;
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: togglePressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: cDarkGreyColor,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedCircle(
              borderColor: _isTaped ? cPrimaryColor : cDarkWhite2Color,
                fillColor: _isTaped ? cPrimaryColor : Colors.transparent,
           ),
            SizedBox(
              width: 10.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 45.w,
                  height: 45.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/05be/37d8/1497f92c9e9294cb3bc635fea2855b20?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ehsfQgKDVD7Lm7qIjdSPLsGdlA1Yv-E2zDG~pP02z7j6LcSaO7WOf3o-r4R1IkDetyHGLl7PQU6krK80fkYclHfkV~~0702vS~V0bHyocUd17TOM4CMNlEItl3ZQlfyfeMFAVGQJTCR-SlZIGvUv8gX-hNn2WBMHzI1foVSmfBtmnHemKvNeoir6HvSfUPDYshyIWXVXGdtBxEdvMzps6z0c9AtLKRNxyqWFqCi4NqepiRJrd7kMPeMc6zfxqiDWOm7g47anJ4bxcDRbm-Qp4sk1OhUjwi8fHnPm8BHYBTaLHOWxmiKxGo~QEvvdyDTeHHjgM21865zgFNbUv~oNhQ__',
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'بطاقة 1',style: ts14White600,
                ),
                Text(
                  '***********1234',style: ts12White300,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

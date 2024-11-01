import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';
import 'animated_circle.dart';

class PaymentFilterItems extends StatefulWidget {
  const PaymentFilterItems({super.key});

  @override
  State<PaymentFilterItems> createState() => _PaymentFilterItemsState();
}

class _PaymentFilterItemsState extends State<PaymentFilterItems> {
    bool _isTaped = false;
  void togglePressed() {
    setState(() {
      _isTaped = !_isTaped;
    });
  }
  int _isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: togglePressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 11.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                 AnimatedCircle(
                    borderColor: _isTaped ? cPrimaryColor : cDarkWhite2Color,
                fillColor: _isTaped ? cPrimaryColor : Colors.transparent,
                 ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'ادفع لاحقاً',
                  style: ts14White400,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 22.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => InkWell(
                    onTap: (){
                      setState(() {
                        _isSelected =index;
                      });
                    },
                    child: Image.asset(
                      
                          getPaymentImage(index),
                          height: 20.h,
                        ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10.w,
                      ),
                  itemCount: 3),
            )
          ],
        ),
      ),
    );
  }

  String getPaymentImage(int index ) {
    if (index == 0) {
      return _isSelected == index ? 'assets/images/postepay.png' : 'assets/images/hint_postepay.png';
    } else if (index == 1) {
      return _isSelected == index ? 'assets/images/tamaraa.png' : 'assets/images/hint_tamara.png';
    } else {
      return _isSelected == index ? 'assets/images/tabyy.png'  : 'assets/images/hint_tappy.png';
    }
  }
}

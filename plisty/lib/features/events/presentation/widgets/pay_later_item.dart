import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/features/events/presentation/widgets/animated_circle.dart';
import '../../../../core/utils/text_styles.dart';
import 'payment_filter_items.dart';
import 'two_headerExpansion_panel.dart';

class PayLaterItem extends StatefulWidget {
  const PayLaterItem({super.key});

  @override
  State<PayLaterItem> createState() => _PayLaterItemState();
}

class _PayLaterItemState extends State<PayLaterItem> {
  bool _isSelected = false;
  void togglePressed() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TwoHeaderexpansionPanel(
      headerWidget2: headerItem2(),
      headerWidget: const PaymentFilterItems(),
      expandedWidget: expandedItem(),
      expandIconColor: cDarkWhite2Color,
      canTapOnHeader: true,
    );
  }

  Widget headerItem2() => InkWell(
    onTap: togglePressed,
    child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 11.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  AnimatedCircle(
                      borderColor: _isSelected ? cPrimaryColor : cDarkWhite2Color,
                  fillColor: _isSelected ? cPrimaryColor : Colors.transparent,
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
              Row(
                children: [
                  Image.asset(
                    'assets/images/postepay.png',
                    width: 40.66.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Image.asset('assets/images/tamaraa.png', width: 32.28.w),
                  SizedBox(
                    width: 5.w,
                  ),
                  Image.asset(
                    'assets/images/tabyy.png',
                    width: 29.9.w,
                  ),
                ],
              ),
            ],
          ),
        ),
  );

  Widget expandedItem() => Container();
}

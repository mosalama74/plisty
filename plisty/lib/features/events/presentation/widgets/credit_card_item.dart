import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plisty/core/components/main_expansion_panel_list.dart';
import 'package:plisty/core/components/main_text_form_field.dart';
import 'package:plisty/features/events/presentation/widgets/animated_circle.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class CreditCardItem extends StatefulWidget {
  const CreditCardItem({super.key});

  @override
  State<CreditCardItem> createState() => _CreditCardItemState();
}

class _CreditCardItemState extends State<CreditCardItem> {
  final creditOwnerController = TextEditingController();
  final creditNumberController = TextEditingController();
  final endDateController = TextEditingController();
  final cvvController = TextEditingController();
  bool _isExpanded = false;

  void getExpandedValue() {
    if (_isExpanded == false) {
      setState(() {
        _isExpanded = true;
      });
    } else {
      setState(() {
        _isExpanded = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MainExpansionPanelList(
      headerWidget: headerItem(context: context),
      expandedWidget: expandedItem(),
      expandIconColor: cDarkWhite2Color,
      canTapOnHeader: _isExpanded,
    );
  }

  Widget headerItem({context ,}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 11.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const AnimatedCircle(),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'البطاقة الائتمانية',
                style: ts14White400,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          _isExpanded
              ? Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/master.svg',
                      width: 21.32.w,
                      height: 12.84.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SvgPicture.asset(
                      'assets/icons/visa.svg',
                      width: 21.32.w,
                      height: 12.84.h,
                    ),
                  ],
                )
              : Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/master.svg',
                      width: 53.15.w,
                      height: 32.h,
                    ),
                    SizedBox(
                      width: 21.12.w,
                    ),
                    SvgPicture.asset(
                      'assets/images/Visa Card.svg',
                      width: 50.7.w,
                      height: 32.h,
                    ),
                  ],
                )
        ],
      ),
    );
  }

  Widget expandedItem() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.w),
        child: Column(
          children: [
            MainTextFormField(
              controller: creditOwnerController,
              fillColor: cLightBlackColor,
              hintText: 'اسم حامل البطاقة',
              hintStyle: ts14White400.copyWith(color: cDarkWhite2Color),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              validator: (value) {},
            ),
            SizedBox(
              height: 10.h,
            ),
            MainTextFormField(
              controller: creditNumberController,
              fillColor: cLightBlackColor,
              hintText: 'رقم البطاقة',
              hintStyle: ts14White400.copyWith(color: cDarkWhite2Color),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              validator: (value) {},
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Expanded(
                  child: MainTextFormField(
                    controller: endDateController,
                    fillColor: cLightBlackColor,
                    hintText: 'تاريخ الانتهاء',
                    hintStyle: ts14White400.copyWith(color: cDarkWhite2Color),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    validator: (value) {},
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: MainTextFormField(
                    controller: cvvController,
                    fillColor: cLightBlackColor,
                    hintText: 'CVV',
                    hintStyle: ts14White400.copyWith(color: cDarkWhite2Color),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    validator: (value) {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      );
}
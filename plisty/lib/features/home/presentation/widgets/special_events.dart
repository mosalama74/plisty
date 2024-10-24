import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/features/home/presentation/widgets/item_header_widget.dart';

import 'horizontal_list_of_events.dart';

class SpecialEvents extends StatelessWidget {
  const SpecialEvents({super.key});

   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemHeaderWidget(
          prefixtext: 'أحداث مميزة',
          suffixtext: 'عرض الكل',
          onPressed: () {},
        ),
        SizedBox(
          height: 10.h,
        ),
        const HorizontalListOfEvents(
          img: 'https://s3-alpha-sig.figma.com/img/393b/990a/27c7b5c26771fe2992c9a837aa877de8?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ARZSWhfhSXz0QrZYpxsi0kODTv0Xy-TslntGDMMHf1Vmm6fg0f6CUIt~gw15Xolq8orSJTbkEYt1zHDJsaSL4MfjFNzj0UPDdc0Xc5M0H4GKv4DYZffz~Jab4OlTxgHDJ2ChpAMgae2ZphHpFeTnJVvgNnLmHTzwZRxUYbjBRI3HCx8xyiFPtBPrGjCsbQMryDfjKiMbakjTQboWrkN4AUrNHP3gszRkwu0yfGX5yW~fiD5i-dHWC1OI59TgDpm2E5DGpsqSpXHkY0YB~5uMscsxO6TL5~Fga5oOq7QC4jccJAdbh242NcUDsVz5ROicyLT~IFG6b2ePgnG8WjhO7g__',
          eventName: 'سباق خيل',
          eventSort: 'رياضة',
          eventDate: '2 ديسمبر، 12:00 م',
          eventLocation:'دبي، مضمار ميدان دبي',
        ),
      ],
    );
  }
}
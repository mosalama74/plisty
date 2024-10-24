import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/core/utils/text_styles.dart';
import 'package:plisty/features/home/presentation/widgets/filter_bottom_sheet.dart';

import '../../../../../core/utils/app_colors.dart';

class SearchTffIconBtn extends StatelessWidget {
  const SearchTffIconBtn({super.key, this.suffixIcon, this.prefixIcon,});
  final IconData? suffixIcon;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsetsDirectional.only(start: 10),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    blurStyle: BlurStyle.outer,
                    blurRadius: 2,
                    color: Color.fromARGB(255, 232, 228, 228))
              ],
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'بحث',
                hintStyle: ts14Black400.copyWith(color: cDarkWhite2Color),
                suffixIcon: Icon(
                   suffixIcon ?? Icons.mic_none_outlined,
                  color: cDarkWhite2Color,
                  size: 25,
                ),
                prefixIcon: prefixIcon, 
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 13.w,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius:  BorderRadius.circular(8.r),
             gradient: const LinearGradient(
              colors: [
                cPrimaryColor,
                cSecondaryColor,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.1, 0.8]),
          ),
          child: IconButton(
            onPressed: () {
              context.navigateTo(FilterBottomSheet());
            },
            icon: SvgPicture.asset(
              'assets/icons/mi_filter.svg',
              color: cWhiteColor,
              width: 24.w,
            ),
          ),
        ),
      ],
    );
  }
}

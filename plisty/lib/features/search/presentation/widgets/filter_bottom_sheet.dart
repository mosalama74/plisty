import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/components/main_elevated_button.dart';
import 'package:plisty/core/components/main_text_form_field.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/core/utils/text_styles.dart';
import 'package:plisty/features/home/presentation/widgets/filter_list.dart';
import 'package:plisty/features/search/presentation/widgets/filter_sections.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
        start: 24.w,
        end: 24.w,
        top: 37.69.h,
      ),
      decoration: BoxDecoration(
        color: cLightBlackColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.r),
          topRight: Radius.circular(8.r),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الأقسام',
              style: ts14White400.copyWith(
                color: cPrimaryColor,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const FilterSections(),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'التاريخ',
              style: ts14White400.copyWith(
                color: cPrimaryColor,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const FilterList(
              firstFilterText: 'اليوم',
            ),
            SizedBox(
              height: 10.h,
            ),
            MainTextFormField(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                hintText: 'اختر',
                hintStyle: ts14White400.copyWith(
                  color: cDarkWhite2Color,
                ),
                suffixWidget: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.calendar_month_outlined,
                    color: cDarkWhite2Color,
                  ),
                ),
                fillColor: cDarkGreyColor),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'البلد',
              style: ts14White400.copyWith(
                color: cPrimaryColor,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            MainTextFormField(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                hintText: 'اختر',
                hintStyle: ts14White400.copyWith(
                  color: cDarkWhite2Color,
                ),
                suffixWidget: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: cDarkWhite2Color,
                  ),
                ),
                fillColor: cDarkGreyColor),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'المدينة',
              style: ts14White400.copyWith(
                color: cPrimaryColor,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            MainTextFormField(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                hintText: 'اختر',
                hintStyle: ts14White400.copyWith(
                  color: cDarkWhite2Color,
                ),
                suffixWidget: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: cDarkWhite2Color,
                  ),
                ),
                fillColor: cDarkGreyColor),
            SizedBox(
              height: 58.77.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  gradient: const LinearGradient(
                      colors: [
                        cPrimaryColor,
                        cSecondaryColor,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      stops: [0.2, 0.9]),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    minimumSize: Size(
                      MediaQuery.of(context).size.width,
                      46.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  child: Text('تطبيق الفلتر', style: ts16white500),
                ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
          ],
        ),
      ),
    );
  }
}

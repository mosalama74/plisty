import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/components/main_elevated_button.dart';
import 'package:plisty/core/components/main_text_form_field.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/core/utils/text_styles.dart';
import 'package:plisty/features/home/presentation/widgets/filter_list.dart';


class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cLightBlackColor,
      bottomSheet: BottomSheet(
        backgroundColor: cLightBlackColor,
        onClosing: () {
          context.navigateBack();
        },
        builder: (context) => Container(
          padding: EdgeInsetsDirectional.only(start: 24.w,end: 24.w,top: 37.69.h,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(8.r),topRight: Radius.circular(8.r),),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'الأقسام',
                  style: ts14Black400.copyWith(
                    color: cPrimaryColor,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const FilterList(),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'التاريخ',
                  style: ts14Black400.copyWith(
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
                  hintText: 'اختر',
                  hintStyle: ts14Black400.copyWith(
                    color: cDarkWhite2Color,
                  ),
                  suffixIcon: Icons.calendar_month_outlined,
                  suffixColor: cDarkWhite2Color,
                  fillColor: Colors.transparent,
                ),
                 SizedBox(
                  height: 16.h,
                ),
                 Text(
                  'البلد',
                  style: ts14Black400.copyWith(
                    color: cPrimaryColor,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                     MainTextFormField(
                  hintText: 'اختر',
                  hintStyle: ts14Black400.copyWith(
                    color: cDarkWhite2Color,
                  ),
                  suffixIcon: Icons.keyboard_arrow_down_rounded,
                  suffixColor: cDarkWhite2Color,
                  fillColor: Colors.transparent,
                ),
                 SizedBox(
                  height: 16.h,
                ),
                 Text(
                  'المدينة',
                  style: ts14Black400.copyWith(
                    color: cPrimaryColor,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                     MainTextFormField(
                  hintText: 'اختر',
                  hintStyle: ts14Black400.copyWith(
                    color: cDarkWhite2Color,
                  ),
                  suffixIcon: Icons.keyboard_arrow_down_rounded,
                  suffixColor: cDarkWhite2Color,
                  fillColor: Colors.transparent,
                ),
                 SizedBox(
                  height: 58.77.h,
                ),
                MainElevatedButton(onPressed: (){}, label: 'تطبيق الفلتر'),
              SizedBox(
                  height:22.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

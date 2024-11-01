import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/features/search/presentation/widgets/date_form_field.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../search/presentation/widgets/filter_sections.dart';
import '../../../search/presentation/widgets/main_drop_down_button.dart';

class FilterBtmSheet extends StatefulWidget {
  const FilterBtmSheet({super.key});

  @override
  State<FilterBtmSheet> createState() => _FilterBtmSheetState();
}

class _FilterBtmSheetState extends State<FilterBtmSheet> {
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
              'البلد',
              style: ts14White400.copyWith(
                color: cPrimaryColor,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const MainDropDownButton(),
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
            const MainDropDownButton(),
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
            const DateFormField(),
            SizedBox(
              height: 58.77.h,
            ),
            Container(
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
            SizedBox(
              height: 22.h,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/core/utils/text_styles.dart';
import 'package:plisty/features/home/presentation/widgets/search_tff_icon_btn.dart';
import 'package:plisty/features/search/presentation/widgets/filter_bottom_sheet.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cLightBlackColor,
      appBar: AppBar(
        leadingWidth: 200.w,
        leading: Padding(
          padding: EdgeInsetsDirectional.only(start: 24.w),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  context.navigateBack();
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: cWhiteColor,
                  size: 12.w,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                ' بحث',
                style: ts16White400,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 26.w, end: 24.w),
        child: Column(
          children: [
            SearchTffIconBtn(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const FilterBottomSheet(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

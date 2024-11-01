import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../../../home/presentation/widgets/filter_list.dart';
import '../../../home/presentation/widgets/plisty_life.dart';
import '../../../home/presentation/widgets/search_tff_icon_btn.dart';
import '../widgets/all_events.dart';
import '../widgets/best10_offers.dart';
import '../widgets/events_choosed_for_u.dart';
import '../widgets/filter_btm_sheet.dart';

class EventsTypeScreen extends StatelessWidget {
  const EventsTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'الموسيقا',
                style: ts16White400,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 24.w,),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(end: 24.w, bottom: 16.h),
                child: SearchTffIconBtn(
                  suffixIcon: Icons.search,
                  hintText: 'حفلة مائية',
                  onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const FilterBtmSheet(),
                );
              },
                ),
              ),
              const FilterList(),
             const Best10Offers(),
              SizedBox(
                height: 16.h,
              ),
              const EventsChoosedForU(),
            
              Padding(
                padding: EdgeInsetsDirectional.only(end: 24.w, top: 16.h,bottom: 16.h),
                child: const PlistyLife(),
              ),
              
              Padding(
                padding: EdgeInsetsDirectional.only(end: 24.w,bottom: 48.15.h),
                child: const AllEvents(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

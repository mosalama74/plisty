import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plisty/core/components/main_elevated_gradient_button.dart';
import 'package:plisty/core/utils/extentions.dart';

import '../../../../core/components/gradient_heart_icon.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/text_styles.dart';
import '../widgets/event_location_and_date_item.dart';
import '../widgets/event_organizer_info.dart';
import '../widgets/expansion_event_schedule.dart';
import '../widgets/expansion_info_body.dart';
import '../../../../core/components/main_expansion_panel_list.dart';
import '../widgets/expansion_ticket_body.dart';
import '../widgets/galary.dart';
import '../widgets/header_expansion_schedule.dart';
import '../widgets/header_expansion_ticket_type.dart';
import '../widgets/location_ratings_organizers.dart';
import '../widgets/show_event_highlights.dart';
import 'events_booking_screen.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

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
                'حفلة دي جي',
                style: ts16White400,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsetsDirectional.only(end: 24.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/ri_share-fill.svg',
                        color: cPrimaryColor,
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  GradientHeartIcon(
                    onTap: () {},
                  ),
                ],
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ShowEventHighlights(),
              SizedBox(
                height: 16.h,
              ),
              const EventLocationAndDateItem(),
              SizedBox(
                height: 16.h,
              ),
              Text(
                AppStrings.eventIntroduction,
                style: ts12White300,
                maxLines: 4,
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 16.h,
              ),
              const EventOrganizerInfo(),
              SizedBox(
                height: 16.h,
              ),
              MainExpansionPanelList(
                headerWidget: ListTile(
                  title: Text(
                    'معلومات هامة',
                    style: ts14White400,
                  ),
                ),
                expandedWidget: const ExpansionInfoBody(),
              ),
              SizedBox(
                height: 16.h,
              ),
              const MainExpansionPanelList(
                headerWidget: HeaderExpansionSchedule(),
                expandedWidget: ExpansionScheduleBody(),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'أنواع التذاكر',
                style: ts14White600.copyWith(
                  color: cDarkWhite2Color,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: MainExpansionPanelList(
                      headerWidget: getTicketType(index),
                      expandedWidget: const ExpansionTicketBody(),
                      isTicket: true,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'المعرض',
                style: ts14White600.copyWith(
                  color: cDarkWhite2Color,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Galary(),
              SizedBox(
                height: 16.h,
              ),
              const LocationRatingsOrganizers(),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 40.5.w,end: 39.5.w,bottom: 67.h),
                child: MainElevatedGradientButton(onPressed: (){
                  context.navigateTo(const EventsBookingScreen(),);
                }, label: 'احجز الآن',),
              ),           
            ],
          ),
        ),
      ),
    );
  }

  Widget getTicketType(int index) {
    if (index == 0) {
      return const HeaderExpansionTicketType(
        ticketType: 'تذكرة عادية',
      );
    } else if (index == 1) {
      return const HeaderExpansionTicketType(
        ticketType: 'تذكرة عادية - أطفال',
      );
    } else if (index == 2) {
      return const HeaderExpansionTicketType(
        ticketType: 'تذكرة VIP',
      );
    } else if (index == 3) {
      return const HeaderExpansionTicketType(
        ticketType: 'تذكرة VIP - أطفال',
      );
    } else {
      return const HeaderExpansionTicketType(ticketType: 'تذكرة Gold');
    }
  }
}

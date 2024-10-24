import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/components/gradient_text.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/core/utils/text_styles.dart';
import 'package:plisty/features/events/presentation/widgets/nearby_and_upcoming_events_Item.dart';
import '../../../home/presentation/widgets/search_tff_icon_btn.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key, required this.isNearbyEvents});
  final bool isNearbyEvents;

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
                isNearbyEvents ? 'أحداث قريبة منك' : 'أحداث قادمة',
                style: ts16Black400.copyWith(color: cWhiteColor),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(
            children: [
              const SearchTffIconBtn(
                suffixIcon: Icons.search,
                prefixIcon: null,
              ),
              SizedBox(
                height: 16.h,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => (index == 0 &&
                          isNearbyEvents)
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 150.h,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.r),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/map.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'يوجد',
                                      style: ts12Black400.copyWith(
                                          color: cWhiteColor),
                                    ),
                                    GradientText(
                                      text: ' 7 ',
                                      style: ts12Black400.copyWith(
                                          color: cWhiteColor),
                                    ),
                                    Text(
                                      'أحداث قريبة منك',
                                      style: ts12Black400.copyWith(
                                          color: cWhiteColor),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'الترتيب بحسب:',
                                      style: ts12Black400.copyWith(
                                          color: cWhiteColor),
                                    ),
                                    Text(
                                      'التاريخ',
                                      style: ts12Black400.copyWith(
                                          color: cWhiteColor),
                                    ),
                                    InkWell(
                                      onTap: (){},
                                      child:const Icon(
                                          Icons.keyboard_arrow_down_outlined , color: cGreyColor,),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      : NearbyAndUpcomingEventsItem(
                          img: isNearbyEvents
                              ? 'https://s3-alpha-sig.figma.com/img/fc7f/2ed8/c6b0af9d1846e25d599131f7c40e3ed6?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cbNcsMMkIjEWyCvS6mnEgpbrAhT-QOIZOBDPqe4P56Necf8ioGKDtBUfJCvcAFndIspyVEv5LoGprVxFL5hFzR0i8HMmC6~gEYeQgi4e0Bvxv0OY2by7PeqOREEBwW57-2RVn115ys24GH0XwjDITjXJchM6-xI-a3hi13RAhuMBSTOv3eD03PD7yvliogiCWXbZsZL8WC3uqXllqstgHrWkBgEO6Mk0FAVOfTHDxpd4nT36DYxTHsjyKaYkbyeAX1cvXqErpGglU0sq8gA95Re8SgSKd1T2qLSK7QKblAYDuokXjd9XfZFDMqCl5k9MawJK~PjeOtCuoYMMyJV~pQ__'
                              : 'https://s3-alpha-sig.figma.com/img/e5c4/2da1/c35ae13fb261d8097edcd0656d6d1ae3?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lITQuE45NFowmPWIcU3zkspUsbj5KvQagARe7CjIskva3glr5cTWte6zcoKsjXCUKXYJOtDOYYLg9OTya1bp7isMU40-KUBTimm23koupUKwuMwGbdVcMCEFSOxDJAvyJYbxz1SwHgpTlUM4JcFgC19Bu8G65cM0miRrfTzEmaySnpQvYrCukcSDm252VwUkJyAHz1~T04oS2JBdcxTvJP-HX0anXfolvnW6~bFFSWLFZ6zDFMMz~naP4vflDTfjmU3xL53BL1F~1SUA09k68noN2VXJ7BvtA2l0I6acORIrtL8Up0k-pNIk-5tNVyVStF2pSnwLdKeG9W8bQJmwqg__',
                          eventName: isNearbyEvents ? 'حفل ديجي' : 'حفلة مائية',
                          eventSort: isNearbyEvents ? 'موسيقى' : 'موسيقى',
                          eventDate: isNearbyEvents
                              ? '2 ديسمبر، 12:00 م'
                              : '02، ديسمبر، 12:00 م',
                          eventLocation: isNearbyEvents
                              ? 'دبي، برج خليفة'
                              : 'دبي، برج خليفة',
                        ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 16.h,
                      ),
                  itemCount: 10),
            ],
          ),
        ),
      ),
    );
  }
}

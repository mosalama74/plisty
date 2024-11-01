import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/extentions.dart';

import '../screens/home_events_screen.dart';
import 'item_header_widget.dart';
import 'horizontal_list_of_vertical_events.dart';

class NearbyEvents extends StatelessWidget {
  const NearbyEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemHeaderWidget(
          prefixtext: 'أحداث قريبة منك',
          suffixtext: 'عرض الخريطة',
          onPressed: () {
            context.navigateTo(const HomeEventsScreen(isNearbyEvents: true,));
          },
        ),
        SizedBox(
          height: 10.h,
        ),
        const HorizontalListOfVerticalEvents(
          img:
              'https://s3-alpha-sig.figma.com/img/fc7f/2ed8/c6b0af9d1846e25d599131f7c40e3ed6?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cbNcsMMkIjEWyCvS6mnEgpbrAhT-QOIZOBDPqe4P56Necf8ioGKDtBUfJCvcAFndIspyVEv5LoGprVxFL5hFzR0i8HMmC6~gEYeQgi4e0Bvxv0OY2by7PeqOREEBwW57-2RVn115ys24GH0XwjDITjXJchM6-xI-a3hi13RAhuMBSTOv3eD03PD7yvliogiCWXbZsZL8WC3uqXllqstgHrWkBgEO6Mk0FAVOfTHDxpd4nT36DYxTHsjyKaYkbyeAX1cvXqErpGglU0sq8gA95Re8SgSKd1T2qLSK7QKblAYDuokXjd9XfZFDMqCl5k9MawJK~PjeOtCuoYMMyJV~pQ__',
          eventName: 'حفل ديجي',
          eventSort: 'موسيقى',
          eventDate: '2 ديسمبر، 12:00 م',
          eventLocation: 'دبي، برج خليفة',
        ),
      ],
    );
  }
}

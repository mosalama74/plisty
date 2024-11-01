import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/features/home/presentation/widgets/event_horizontal_item.dart';
import 'package:plisty/features/home/presentation/widgets/horizontal_list_of_horizontal_event.dart';

import '../screens/home_events_screen.dart';
import 'item_header_widget.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemHeaderWidget(
          prefixtext: 'أحداث قادمة',
          suffixtext: 'عرض الكل',
          onPressed: () {
            context.navigateTo(const HomeEventsScreen(
              isNearbyEvents: false,
            ));
          },
        ),
       const HorizontalListOfHorizontalEvent(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/features/home/presentation/widgets/item_header_widget.dart';

import '../../../home/presentation/widgets/horizontal_list_of_vertical_events.dart';
import '../pages/event_details_screen.dart';

class EventsChoosedForU extends StatelessWidget {
  const EventsChoosedForU({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemHeaderWidget(
          prefixtext: 'أحداث مختارة لك',
          suffixtext: 'عرض الكل',
          onPressed: () {},
        ),
        HorizontalListOfVerticalEvents(
          onTap: () {
            context.navigateTo(const EventDetailsScreen());
          },
          img:
              'https://s3-alpha-sig.figma.com/img/fc7f/2ed8/c6b0af9d1846e25d599131f7c40e3ed6?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ew~epwwgBPiG8OH8S6CjBgBPaehR1r9qtyxgDuVfVMbgIJlfhcYKW2hxx1uMHPSs1KOzRM28pdRXZnzus-vJ9~C5HjZzCsn7x~uIBpeMQ1VDxxXs5DlO96BzGP0p8lOiO~xGFjXf2lyWDfQ6Q6DGEMu8umJiEd1OT6j81wbCXYNJJ4~Xq0dq1FUSXuK-NWt6EzZIw-VTw6S491sV7AAEDzrl1HryWGGtIajNDT6gia7QkAPlapzp2AQlRKpgqCPM0TfBig7yCfNWjSxHHvVVF7KBfNuYX~yEPrs2nFc3kkv2cnpDXOt2yrrU-ZzDeTwD5rcxA-AgBhovjLq0qeyppg__',
          eventName: 'حفل ديجي',
          eventSort: 'موسيقى',
          eventDate: '2 ديسمبر، 12:00 م',
          eventLocation: 'دبي، برج خليفة',
        ),
      ],
    );
  }
}

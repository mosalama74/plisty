import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/features/home/presentation/widgets/item_header_widget.dart';

import '../../../home/presentation/widgets/horizontal_list_of_horizontal_event.dart';

class AllEvents extends StatelessWidget {
  const AllEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const ItemHeaderWidget(
          prefixtext: 'جميع الأحداث',
        ),
        HorizontalListOfHorizontalEvent(height: 16.h,),
      ],
    );
  }
}

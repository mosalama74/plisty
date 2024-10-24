import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/features/home/presentation/widgets/item_header_widget.dart';

import '../../../plistylife/presentation/pages/list_live_streaming_screen.dart';
import 'video_life_item.dart';

class PlistyLife extends StatelessWidget {
  const PlistyLife({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemHeaderWidget(
          prefixtext: 'بليستي لايف',
          suffixtext: 'عرض الكل',
          onPressed: () {
            context.navigateTo(const ListLiveStreamingScreen());
          },
        ),
        SizedBox(height: 10.h,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200.h,
          child: Row(
            children: List.generate(3, (index) => const Expanded(child: VideoLifeItem()),),
          ),
        ),
      ],
    );
  }
}

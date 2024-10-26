import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/features/home/presentation/widgets/video_life_item.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';
import 'live_streaming_screen.dart';

class ListLiveStreamingScreen extends StatelessWidget {
  const ListLiveStreamingScreen({super.key});

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
                'بليستي لايف',
                style: ts16White400.copyWith(color: cDarkWhite2Color),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(end: 15.w, start: 25.w),
        child: ListView.separated(
            itemBuilder: (context, index) => SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: InkWell(
                  onTap: (){
                    context.navigateTo(const LiveStreamingPage());
                  },
                  child: const VideoLifeItem(
                    borderRadius: 25.33,
                    fontSize: 10.44,
                    iconHeight: 21.29,
                  ),
                )),
            separatorBuilder: (context, index) => SizedBox(
                  height: 16.h,
                ),
            itemCount: 5),
      ),
    );
  }
}

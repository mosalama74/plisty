import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class ExpansionInfoBody extends StatelessWidget {
  const ExpansionInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      color: cExpanionBodyColor,
      child: Column(
        children: List.generate(
          2,
          (index) => Padding(
        padding: EdgeInsets.only(bottom: 16.h),
            child: infoBody(),
          ),
        ),
      ),
    );
  }

  Widget infoBody() {
    return Column(
      children: [
        infoHeader(
          title: 'الهدف من هذا النص هو إعطاء المصمم',
          subTitle:
              'أو المطور فكرة عن كيفية ظهور المحتوى في الشكل النهائي، دون الحاجة إلى استخدام نصوص ذات معن',
        ),
        SizedBox(
          height: 10.h,
        ),
        Column(
          children: List.generate(
            3,
            (index) => infoSubTitle(
              leadingInfo: 'أو محتوى فعلي. يُستخدم هذا النوع',
            ),
          ),
        ),
      ],
    );
  }

  Widget infoHeader({required String title, required String subTitle}) {
    return ListTile(
      title: Text(
        title,
        style: ts14White700,
      ),
      subtitle: Text(
        subTitle,
        style: ts14White400,
      ),
    );
  }

  Widget infoSubTitle({required String leadingInfo}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
              height: 5.h,
              width: 5.w,
              decoration: const BoxDecoration(
                color: cWhiteColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            child: Text(
              leadingInfo,
              style: ts14White400,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}

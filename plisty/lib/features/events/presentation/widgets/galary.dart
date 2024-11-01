import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../../../../core/utils/app_colors.dart';

class Galary extends StatelessWidget {
  const Galary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        itemBody(context),
        SizedBox(
          height: 10.h,
        ),
        itemBody(context, isLastItem: true),
      ],
    );
  }

  Widget itemBody(context,{bool isLastItem = false}) {
    bool _isLastItem = isLastItem;
    return Row(
      children: List.generate(
        3,
        (index) => Expanded(
          child: _isLastItem && index == 2
              ? Stack(
                  children: [
                    itemElement(index),
                    Container(
                      width: 120.w,
                      height: 120.h,
                      margin: EdgeInsetsDirectional.only(
                          end: index != 2 ? 10.w : 0.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: chighlight4groundColor.withOpacity(.5),
                      ),
                      child: Center(
                        child: Text(
                          'عرض المزيد',
                          style: ts16White600,
                        ),
                      ),
                    ),
                  ],
                )
              : itemElement(index),
        ),
      ),
    );
  }

  Widget itemElement(int index) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: index != 2 ? 10.w : 0.w),
      width: 120.w,
      height: 120.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        image: const DecorationImage(
          image: NetworkImage(
            'https://s3-alpha-sig.figma.com/img/71fa/6055/f04245c4c94d0455c46fdf86556930ca?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=G9UB0yYqIY99VEbTxnhJWJgMes0tZmhzf-KP8aNgAx6jMnAi1woh07bMCchk13Rxq9wlbEPgDfS-v4U1kmJNvcc~QvHSWlkq7qC4LNezQmcuoohYJyD5JDvhdFn4XJ~FsFltjM3ZIHNYpcmqK9eFbXT3eW1crI-8lQcAmP~surNQ5EGRohNs64m8UGrKqTe3EWYKZ4dOiX0hiiurFK1E5trISpDKgEoSUXTMPb5u5UnRbjTRxqXeu8cPBk8Uez9f7tfr3SlGvjgburlWiJrH-q6cv63L0MvH5Mwn98HO5amMLM79PALlcA~1YGYRNkIoQdwDOaa8~quaUGQKZeL8FQ__',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

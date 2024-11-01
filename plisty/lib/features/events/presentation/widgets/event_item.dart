import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../pages/events_type_screen.dart';

class EventItem extends StatelessWidget {
  const EventItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {context.navigateTo(const EventsTypeScreen());},
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            width: 185.h,
            height: 190.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              gradient: const LinearGradient(
                  colors: [
                    cOtp1Color,
                    Color(0xFF00F7FF),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.9]),
            ),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  
                  image: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/f552/0e7d/bf7a130beb554ff2a935943b0a3b6cb4?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=V3GeI6EjIQQGBkiXIq30dwbSwzFwZ0zubtMDCH0pt-x3q27-LeZkOYFkIxyk0jM5vcDHdR5HYXf1ov54lcZLHBNdhKRvlF1eV~S1laXNRsZULNcwfSIACcd4xoWdnTh~QobM~5I1-IBLFk7McwCmA0ZxPKOEblGkt3Zc~OVigYbsXAyT~CiTSo7xxUiqL-BXRnwgsqD8KfXriSIzZqlu5S0Iu6YLspf8qNc1rL~DxYNX9L9cNfjAwSNa84rCSN9O2DkB4k1JL2XdUsGIOfg8dKQKjfOv6mf2BMAhlVUqPaLeZXIB7FFNJSkOVMAwqbHrQ4~~SV2JoPbbJnvJwPEi6w__',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(0, 4),
                  ),
                ],),
              ),
            ),
          ),
          Text(
            'الموسيقا',
            style: ts18White400,
          )
        ],
      ),
    );
  }
}

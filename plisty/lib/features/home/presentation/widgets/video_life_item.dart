import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plisty/core/utils/app_colors.dart';

class VideoLifeItem extends StatelessWidget {
  const VideoLifeItem({
    super.key,
    this.iconHeight,
    this.fontSize,
    this.borderRadius,  this.itemWidth,
  });
  final double? iconHeight;
  final double? fontSize;
  final double? borderRadius;
  final double? itemWidth;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          height: 200.h,
          width: itemWidth ?? MediaQuery.sizeOf(context).width/3,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(borderRadius?.r ?? 8.r),
            image: const DecorationImage(
              image: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/625b/76a4/cf3ffa1d9cb405c57601dbb23b09d733?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fLqv8eUUm6wuSExYwVus0k4mKiKG24KsV~CbRC9Dvie7rSDkXJr2T4YLAK2fsmrwZvlvHkJ5xUtLK0FuJRyFWbRACAb2mjktTmKV0rBUfb~KSz4qz0xLcRWa1z5rrMie2ns7d8OOwdQ~P1-uzl-KxyRwXI6hDAfv-yT3G1sAapVn3xrowWXfPTEUdHO5gXuhaWrtIeC15IS-BIsyfkPTO-Usli9c0-srLT4ucDOU7Dw-cl85stmE-Usg3sL6ODhcvLQJ8vKRdoEsV7YbjITnO9QRZ~z2gkhq8r8JWnbluaL~v2tSxRencVifCmVjNWnnP~BlzmGOZriV5Wp7KK5P~g__',
              ),
              fit: BoxFit.cover,
            ),
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
              ],
            ),
           ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 8.7.w, bottom: 6.5.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/ticket1.svg',
                  color: cWhiteColor,
                  height: iconHeight ?? 14.h,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/ri_share-fill.svg',
                  color: cWhiteColor,
                  height: iconHeight ?? 14.h,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 5.w),
                decoration: BoxDecoration(
                  color: cDarkWhite2Color,
                  borderRadius: BorderRadius.circular(9.6.r),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/gravity-ui_play-fill.svg',
                        color: cWhiteColor,
                        height: iconHeight ?? 14.h,
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Text(
                      '4.2k',
                      maxLines: 1,
                      style: GoogleFonts.inter(
                          color: cWhiteColor,
                          fontSize: fontSize?.sp ?? 6.87.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

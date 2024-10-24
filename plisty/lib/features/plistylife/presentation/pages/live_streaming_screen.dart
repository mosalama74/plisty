import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plisty/core/utils/extentions.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class LiveStreamingPage extends StatefulWidget {
  const LiveStreamingPage({super.key});

  @override
  createState() => _LiveStreamingPageState();
}

class _LiveStreamingPageState extends State<LiveStreamingPage> {
  final String appId = 'YOUR_AGORA_APP_ID'; // Replace with your Agora App ID
  final String channelName = 'test_channel'; // Channel name
  //late AgoraRtcEngine _engine;

/*   @override
  void initState() {
    super.initState();
    _initAgora();
  } */

  /* Future<void> _initAgora() async {
    _engine = await AgoraRtcEngine.create(appId);
    await _engine.enableVideo();
    await _engine.joinChannel(null, channelName, null, 0);
  } */

  /* @override
  void dispose() {
    _engine.leaveChannel();
    _engine.destroy();
    super.dispose();
  }
 */
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://s3-alpha-sig.figma.com/img/625b/76a4/cf3ffa1d9cb405c57601dbb23b09d733?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fLqv8eUUm6wuSExYwVus0k4mKiKG24KsV~CbRC9Dvie7rSDkXJr2T4YLAK2fsmrwZvlvHkJ5xUtLK0FuJRyFWbRACAb2mjktTmKV0rBUfb~KSz4qz0xLcRWa1z5rrMie2ns7d8OOwdQ~P1-uzl-KxyRwXI6hDAfv-yT3G1sAapVn3xrowWXfPTEUdHO5gXuhaWrtIeC15IS-BIsyfkPTO-Usli9c0-srLT4ucDOU7Dw-cl85stmE-Usg3sL6ODhcvLQJ8vKRdoEsV7YbjITnO9QRZ~z2gkhq8r8JWnbluaL~v2tSxRencVifCmVjNWnnP~BlzmGOZriV5Wp7KK5P~g__',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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
                  style: ts16Black400.copyWith(color: cDarkWhite2Color),
                ),
              ],
            ),
          ),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 150.h,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black87,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ],
             
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/gravity-ui_play-fill.svg',
                        color: cWhiteColor,
                        height: 21.29.h,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      '4.2k',
                      maxLines: 1,
                      style: GoogleFonts.inter(
                          color: cWhiteColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  width: 32.w,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/ticket1.svg',
                        color: cWhiteColor,
                        height: 21.29.h,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'حجز',
                      maxLines: 1,
                      style: GoogleFonts.inter(
                          color: cWhiteColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  width: 32.w,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/ri_share-fill.svg',
                        color: cWhiteColor,
                        height: 21.29.h,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'مشاركة',
                      maxLines: 1,
                      style: GoogleFonts.inter(
                          color: cWhiteColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

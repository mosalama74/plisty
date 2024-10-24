import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:video_player/video_player.dart';

class VideoLifeItem extends StatefulWidget {
  const VideoLifeItem({
    super.key, this.iconHeight, this.fontSize, this.borderRadius,
  });
final double? iconHeight;
final double? fontSize;
final double? borderRadius;
  @override
  State<VideoLifeItem> createState() => _VideoLifeItemState();
}

class _VideoLifeItemState extends State<VideoLifeItem> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayer;

  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(
        Uri(path: 'https://www.youtube.com/watch?v=krN0LdcAWtc'));
    _initializeVideoPlayer = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 10.w),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius?.r ?? 8.r),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/625b/76a4/cf3ffa1d9cb405c57601dbb23b09d733?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fLqv8eUUm6wuSExYwVus0k4mKiKG24KsV~CbRC9Dvie7rSDkXJr2T4YLAK2fsmrwZvlvHkJ5xUtLK0FuJRyFWbRACAb2mjktTmKV0rBUfb~KSz4qz0xLcRWa1z5rrMie2ns7d8OOwdQ~P1-uzl-KxyRwXI6hDAfv-yT3G1sAapVn3xrowWXfPTEUdHO5gXuhaWrtIeC15IS-BIsyfkPTO-Usli9c0-srLT4ucDOU7Dw-cl85stmE-Usg3sL6ODhcvLQJ8vKRdoEsV7YbjITnO9QRZ~z2gkhq8r8JWnbluaL~v2tSxRencVifCmVjNWnnP~BlzmGOZriV5Wp7KK5P~g__',
                ),
                fit: BoxFit.cover,
              ),
              
            ),
           /*  child: FutureBuilder(
              future: _initializeVideoPlayer,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator(),);
                }
              },
            ), */
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
                    height: widget.iconHeight ?? 14.h,
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
                    height: widget.iconHeight ?? 14.h,
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
                          height: widget.iconHeight ?? 14.h,
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Text(
                        '4.2k',
                        maxLines: 1,
                        style: GoogleFonts.inter(
                            color: cWhiteColor, fontSize:widget.fontSize?.sp ?? 6.87.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

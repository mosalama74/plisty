/* import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:plisty/core/utils/extentions.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';


class DoneDialogWidget extends StatefulWidget {
  const DoneDialogWidget({super.key});

  @override
  State<DoneDialogWidget> createState() => _DoneDialogWidgetState();
}

class _DoneDialogWidgetState extends State<DoneDialogWidget> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
     // context.navigateToAndRemoveAll(const DashboardScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(32.r),
        decoration: BoxDecoration(
          color: cWhiteColor,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/icons/done.svg',
              height: 128.h,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              "تهانينا",
              style: ts24Green700,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "حسابك جاهز للاستخدام. سيتم إعادة توجيهك إلى الصفحة الرئيسية في غضون ثوانٍ قليلة.",
              style: ts14Black400,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 32.h,
            ),
            Lottie.asset('assets/lotties/loading.json',
                height: 60.h, width: 60.w, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
 */
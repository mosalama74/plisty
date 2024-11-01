import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plisty/core/components/main_expansion_panel_list.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/features/events/presentation/widgets/animated_circle.dart';

import '../../../../core/utils/text_styles.dart';

class PayLaterItem extends StatelessWidget {
  const PayLaterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return MainExpansionPanelList(
      headerWidget: headerItem(),
      expandedWidget: expandedItem(),
      expandIconColor: cDarkWhite2Color,
      canTapOnHeader: true,
    );
  }

  Widget headerItem() => Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 11.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
              const AnimatedCircle(),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'ادفع لاحقاً',
                  style: ts14White400,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/Livello_1.svg',
                  width: 40.66.w,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Image.network(
                  'https://s3-alpha-sig.figma.com/img/45dc/9802/8c2a33eb2f1d722b69520c4785c9a78d?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lEeOs3mMnoTStSPJAAzUXFMRXiIWubq35wLcZq8bgI5s7vxqp9abc~Zflbi~1fhi8AwVmzNpS9jY3O7APYofEPHRXCVgc8nfh961Mo2sfuenmkjVdAP4ZYlBS1SkB4ySj3GudXmdmiyRtfRW-pNJ6ahBulzqW1wH~N43ZYZQ00CcuxhEOZorr0d1sICh0HVivaRnNBjcL1JbVgWuqtjbXsJZoHmghccXha3aPj8J9xguzaVmc2CFgC0ivVhozJF5kqk~BYMcayc1ZFAznVeq7My4BESTLRq8v~Uyq6cOnJwK9HJWdw1pQ0A8YcJ02m7dUHrTgPgltRVfU72pOAs0JA__',
                  width: 32.28.w,
                ),
                SizedBox(
                  width: 5.w,
                ),
                SvgPicture.asset(
                  'assets/images/tabby.svg',
                  width: 29.9.w,
                ),
              ],
            ),
          ],
        ),
      );

  Widget expandedItem() => Row(
        children: [],
      );
}

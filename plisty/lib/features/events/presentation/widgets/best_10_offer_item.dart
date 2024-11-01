import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/features/home/presentation/widgets/event_vertical_item.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class Best10OfferItem extends StatelessWidget {
  const Best10OfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        const EventVerticalItem(
          img:
              'https://s3-alpha-sig.figma.com/img/e5c4/2da1/c35ae13fb261d8097edcd0656d6d1ae3?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lq5qDNGtg86b6-6ZrrDfgzrCgoXFOPhFSvH68e8qYV3agxW41nfyuJXskL5z60Al5YXBdAm5Ad~FOow5FYMj25bf1YNMUINp-rTXBgnQuWv3f0lIv89K0e03wgDg~Wed6Jw4OkXJiCk4B6TY~g9sLJuE4CVsTzRMcCO0YLZH5l8YWK4oi362FJ96L4lRJFh4~iA80ZK4B6nT1AagSb9KF61m6TWQ6hcu6yV9yKbPqA5TVJgBFFE7tzVxx4wrkczL4kMbWgeKfe9zrnquGpaG1KbnOZFSGpKHm8naQKB872G4AwZxszg28Cfilucztij9cIgU6X2O0Bb8F04qREJDgQ__',
          eventName: 'حفل موسيقي صيفي',
          eventSort: 'موسيقى',
          eventDate: '2 ديسمبر، 12:00 م',
          eventLocation: 'دبي، برج خليفة',
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.5.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: cRedColor.withOpacity(0.9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4.r),
              bottomRight: Radius.circular(4.r),
            ),
          ),
          child: Text('- 20%',style: ts12White400,textDirection: TextDirection.ltr,),
        )
      ],
    );
  }
}

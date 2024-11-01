import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/circle_image.dart';
import '../../../../core/components/rating_star_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: List.generate(
            2,
            (index) => Padding(
              padding: EdgeInsetsDirectional.only(bottom: index == 1 ? 10.h : 16.h),
              child: ratingBody(context),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'عرض الكل',
            style: ts14White600.copyWith(color: cPrimaryColor,),
          ),
        ),
      ],
    );
  }

  Widget ratingBody(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cExpanionBodyColor,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: SvgPicture.asset('assets/icons/“.svg'),
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            'كان حفل الدي جي في أبو ظبي تجربة فريدة من نوعها. المكان كان رائعاً، والصوت كان واضحاً ونقياً. بالإضافة إلى الموسيقى الرائعة، كانت هناك أجواء احتفالية مميزة. بالتأكيد سأكرر هذه التجربة.',
            style: ts10White200,
            maxLines: 4,
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              CircleImage(
                width: 26.w,
                height: 26.h,
                bgColor: cCircleImgBgColor.withOpacity(.3),
                img:
                    'https://s3-alpha-sig.figma.com/img/5a98/9731/315be90fb7b4f051a02f9c67415757f6?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mfebUaXxGaAa5yqOfCCRWJ3I4ex1VZsL7ImvS1PZigQojVu~5R3Pa66ikCsenhULXB3nJUzzN2-flIAWHCefoIqRKwq4M~bwBBQm0JxKzjkqgBqMbIBtE-WooCztCtVpoLF5TY6aVHx76TRH8PdlDiFfebGXWlU62nqQtVzbNoFeB0vjw1Ws2vlEg-cPpEWlXM1jD7gK7KHOyHdV0N7W-uwqcegjY1~TrGYl66gZKTOs88xUXGPENhX0sOL2DK1R5~KQRIumtCCR2Rkz2hFFXY-CigS~Rgwb6k65zwnxUVG0T0~VM7zlKmgGSK8RAve4Poex~9qeBX7JXmViuUR7yA__',
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'محمد أحمد',
                      style: ts10White300,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Directionality(
                          textDirection: TextDirection.ltr,
                          child: RatingStar(
                            updateOnDrag: true,
                            isRateValeShow: false,
                          ),
                        ),
                        Text(
                          '12/01/2023',
                          style: ts10White400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

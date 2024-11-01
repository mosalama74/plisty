import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/features/home/presentation/widgets/item_header_widget.dart';

import '../../../../core/components/gradient_number.dart';
import '../../../../core/utils/text_styles.dart';
import 'best_10_offer_item.dart';

class Best10Offers extends StatelessWidget {
  const Best10Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ItemHeaderWidget(
          prefixtext: 'أفضل 10 عروض',
        ),
        SizedBox(
          height: 240.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Stack(
                    children: [
                      const Best10OfferItem(),
                     /*  Text(
                        (index + 1).toString(),
                        style: TextStyle(
                          fontSize: 64.sp,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..style =PaintingStyle.stroke  
                            ..strokeWidth = 2.5
                            ..shader =  const LinearGradient(
          colors: [
            Color(0xffFF2FB7),
            Color(0xffFF18CD),
            Color(0xffFF00E4),
            Color(0xff9C5FEE),
          ],
       stops: [0.12, 0.32, 0.52, 0.71],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(Rect.fromLTWH(0, 0, 10, 10),),
                        )
                        
                      ), */

                      /*      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffFF2FB7),
                              Color(0xffFF18CD),
                              Color(0xffFF00E4),
                              Color(0xff9C5FEE),
                            ],
                            stops: [0.12, 0.32, 0.52, 0.71],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                
                              ),
                              child: Center(
                                child: Text(
                                  (index + 1).toString(),
                                  style: ts64White900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ), */
                    ],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16.w,
                  ),
              itemCount: 10),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';

import '../../../../core/utils/text_styles.dart';

class FilterSections extends StatefulWidget {
  const FilterSections({super.key});

  @override
  State<FilterSections> createState() => _FilterSectionsState();
}

class _FilterSectionsState extends State<FilterSections> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
                  direction: Axis.horizontal,
                  spacing: 10.w,
                  runSpacing: 10.h,
                  children: List.generate(5, (index) {
                    return InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: AnimatedContainer(
                height: 40.h,  
                width:  index == 0 ? 58.w : MediaQuery.sizeOf(context).width / 4,  
                duration: const Duration(milliseconds: 300),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 9.h),
                decoration: BoxDecoration(
                  color: index == selectedIndex ? cWhiteColor : cDarkGreyColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.r),
                  ),
                  
                  gradient: index == selectedIndex ?  
                  const LinearGradient(
                      colors: [
                        cPrimaryColor,
                        cSecondaryColor,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.1, 0.8])
                      : null,
                ),
                child: index == 0
                    ? Center(
                        child: Text(
                           'الكل',
                          style: ts14White700.copyWith(
                              color: selectedIndex == 0
                                  ? cWhiteColor
                                  : cDarkWhite2Color),
                        ),
                      )
                    : Center(
                        child: Text(
                          'موسيقى',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: ts14White400.copyWith(
                            color:
                                selectedIndex == 0 ? cDarkWhite2Color : cWhiteColor,
                          ),
                        ),
                      ),
              ),
            );
                  },),
                );
  }
}
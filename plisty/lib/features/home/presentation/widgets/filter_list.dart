import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/core/utils/text_styles.dart';

class FilterList extends StatefulWidget {
  const FilterList({super.key,  this.firstFilterText});
  final String? firstFilterText;
  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: AnimatedContainer(
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
                          widget.firstFilterText ?? 'الكل',
                          style: ts14Black700.copyWith(
                              color: selectedIndex == 0
                                  ? cWhiteColor
                                  : cDarkWhite2Color),
                        ),
                      )
                    : Center(
                        child: Text(
                          'موسيقى',
                          style: ts14Black400.copyWith(
                            color:
                                selectedIndex == 0 ? cDarkWhite2Color : cWhiteColor,
                          ),
                        ),
                      ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 14.w,
              ),
          itemCount: 6),
    );
  }
}

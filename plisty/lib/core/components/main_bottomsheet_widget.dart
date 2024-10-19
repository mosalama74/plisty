import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class MainBottomSheetWidget extends StatelessWidget {
  const MainBottomSheetWidget({
    super.key,
    required this.children,
    this.crossAxisAlignment,
    this.maxHeight,
    this.isScrollable,
    this.paddingTop,
    this.paddingRight,
    this.paddingLeft,
    this.paddingBottom,
  });
  final List<Widget> children;
  final CrossAxisAlignment? crossAxisAlignment;
  final double? maxHeight;
  final bool? isScrollable;
  final double? paddingTop;
  final double? paddingRight;
  final double? paddingLeft;
  final double? paddingBottom;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            constraints: maxHeight != null
                ? BoxConstraints(maxHeight: maxHeight!.h)
                : null,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.r),
                topRight: Radius.circular(24.r),
              ),
            ),
            padding: EdgeInsets.only(
                top: paddingTop ?? 40,
                left: paddingLeft ?? 16,
                right: paddingRight ?? 16,
                bottom: paddingBottom ?? 16),
            child: (isScrollable != null && isScrollable != false)
                ? SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment:
                            crossAxisAlignment ?? CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: children),
                  )
                : Column(
                    crossAxisAlignment:
                        crossAxisAlignment ?? CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: children,),
          ),
          // Floating close button
          Positioned(
            top: -50, // Adjust the position to overlap the bottom sheet
            left: MediaQuery.of(context).size.width / 2 - 35,
            child: CircleAvatar(
              backgroundColor: cPrimaryColor,
              child: IconButton(
                onPressed:(){
                  Navigator.pop(context);
                },  
                icon: const Icon(
                  Icons.close,
                  color: cWhiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

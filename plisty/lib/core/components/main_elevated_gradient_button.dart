import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../utils/app_colors.dart';

class MainElevatedGradientButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final bool enabled;
  final bool isLoading;
  final TextStyle? style;
  final Color? backgroundColor;
  final Widget? loadingIndicatorWidget;
  final Color? textColor;
  final List<Color>? gradientColors;
  final AlignmentGeometry? beginGragient;
  final AlignmentGeometry? endGragient;

  const MainElevatedGradientButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.isLoading = false,
    this.enabled = true,
    this.style,
    this.backgroundColor,
    this.loadingIndicatorWidget,
    this.textColor,
    this.gradientColors, this.beginGragient, this.endGragient,
  });

  @override
  Widget build(BuildContext context) => Container(
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          gradient: LinearGradient(
              colors: gradientColors ??
                  [
                    cPrimaryColor,
                    cSecondaryColor,
                  ],
              begin: beginGragient ?? Alignment.bottomLeft,
              end: endGragient ??Alignment.bottomRight,stops:[0.2,0.9] ),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(
              MediaQuery.of(context).size.width,
              46.h,
            ),
            side: BorderSide.none,
            shape: const RoundedRectangleBorder(),
            backgroundColor: backgroundColor ?? Colors.transparent,
            // disabledBackgroundColor: cPrimaryColor.withOpacity(.5)
          ),
          onPressed: enabled ? onPressed : null,
          child: isLoading
              ? Center(
                  child: loadingIndicatorWidget ??
                      const CircularProgressIndicator())
              : FittedBox(
                  child: Text(
                    label,
                    style: style ??
                        ts16white500.copyWith(color: textColor ?? cWhiteColor),
                  ),
                ),
        ),
      );
}

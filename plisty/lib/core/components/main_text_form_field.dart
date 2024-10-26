import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:plisty/core/utils/styles.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../utils/app_colors.dart';

class MainTextFormField extends StatelessWidget {
  const MainTextFormField(
      {super.key,
      this.controller,
      this.obscureText = false,
      this.enabled = true,
      this.label,
      this.noPadding = true,
      this.asyncIcon = false,
      this.hintStyle,
      this.keyboardType,
      this.hintText,
      this.onChanged,
      this.onPressedSuffix,
      this.maxLines = 1,
      this.isRequired = false,
      this.maxLength,
      this.validator,
      this.labelStyle,
      this.textFiledTextStyle,
      this.cursorColor,
      this.fillColor,
      this.enabledBorder,
      this.focusedBorder,
      this.disabledBorder,
      this.errorBorder,
      this.filled,
      this.suffixIcon,
      this.onTap,
      this.isTextArea = false,
      this.suffixColor,
      this.suffixSize,
      this.suffixWidget, this.prefix});

  final TextEditingController? controller;
  final int maxLines;
  final String? label;
  final TextStyle? hintStyle;
  final bool obscureText, enabled;
  final bool noPadding, asyncIcon, isRequired;
  final TextInputType? keyboardType;
  final String? hintText;
  final int? maxLength;
  final bool isTextArea;
  final void Function(String?)? onChanged;
  final void Function()? onPressedSuffix;
  final Widget? suffixWidget;
  final TextStyle? labelStyle;
  final TextStyle? textFiledTextStyle;

  final Color? cursorColor;
  final Color? fillColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? disabledBorder;
  final InputBorder? errorBorder;
  final bool? filled;
  final IconData? suffixIcon;
  final Widget? prefix;
  final VoidCallback? onTap;
  final Color? suffixColor;
  final double? suffixSize;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: noPadding == true
          ? EdgeInsets.zero
          : EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (label != null) ...[
            Text("$label ${isRequired ? "*" : ""}",
                style: labelStyle ?? ts14White400),
            SizedBox(height: 12.h),
          ],
          Container(
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                ),
            child: TextFormField(
              onTap: onTap,
              validator: validator ??
              
                  (value) {
                    if (value == null || value.isEmpty) {
                  return '';
                }
                return null;
                  },
              maxLines: maxLines,
              onChanged: onChanged,
              controller: controller,
              cursorColor: cursorColor ?? cPrimaryColor,
              inputFormatters:
                  (keyboardType != null && keyboardType == TextInputType.number)
                      ? [
                          ArabicToEnglishNumberFormatter(),
                        ]
                      : [],
              enabled: enabled,
              keyboardType: keyboardType ?? TextInputType.text,
              textAlignVertical: TextAlignVertical.center,
              
              obscureText: obscureText,
              style: hintStyle ?? ts14White400,
              maxLength: maxLength,
              decoration: InputDecoration(
                filled: filled ?? true,
                fillColor: fillColor ?? cLightGreyColor,
                hintText: hintText,
                constraints: isTextArea == true
                    ? null
                    : BoxConstraints(
                        minHeight: 24.h,
                        maxHeight: maxLength == null ? 64.h : 80.h,
                      ),
                alignLabelWithHint: true,
                prefix: prefix,
                suffixIcon: asyncIcon == true
                    ? IconButton(
                        onPressed: onPressedSuffix ?? () {},
                        icon: Icon(
                          suffixIcon ?? Icons.search,
                          color: suffixColor ?? cWhiteColor,
                          size: suffixSize ?? 14.r,
                        ))
                    : suffixWidget,
                errorBorder: errorBorder ??
                    mainEnabledInputBorder.copyWith(
                        borderSide: const BorderSide(
                      color: cErrorColor,
                    )),
                prefixIconConstraints:
                    BoxConstraints.expand(width: 24.w, height: 0.h),
                prefixIcon: const SizedBox(),
                hintStyle:
                    hintStyle ?? ts14White400.copyWith(color: cNewGreyColor),
                enabledBorder: enabledBorder ?? mainEnabledInputBorder,
                disabledBorder: disabledBorder ?? mainEnabledInputBorder,
                focusedBorder: focusedBorder ?? mainEnabledInputBorder,
                border: enabledBorder ?? mainEnabledInputBorder,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ArabicToEnglishNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    // Replace Arabic numbers with English numbers
    newText = newText
        .replaceAll('٠', '0')
        .replaceAll('١', '1')
        .replaceAll('٢', '2')
        .replaceAll('٣', '3')
        .replaceAll('٤', '4')
        .replaceAll('٥', '5')
        .replaceAll('٦', '6')
        .replaceAll('٧', '7')
        .replaceAll('٨', '8')
        .replaceAll('٩', '9');

    return newValue.copyWith(
      text: newText,
      selection: newValue.selection,
    );
  }
}

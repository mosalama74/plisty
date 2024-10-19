import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:intl_phone_field/intl_phone_field.dart';

import '../utils/app_colors.dart';
import '../utils/styles.dart';
import 'main_text_form_field.dart' show ArabicToEnglishNumberFormatter;

class MainPhoneTextFormField extends StatefulWidget {
  const MainPhoneTextFormField({
    super.key,
    this.controller,
    this.noPadding = true,
    this.label,
    this.hintStyle,
    required this.countryCode,
    required this.hintText,
    this.onChanged,
    this.isRequired = false,
    this.enabled = true,
    this.suffixIcon,
    this.suffixPress,
    this.labelStyle,
    this.textFiledTextStyle,
    this.dropDownTextStyle,
    this.cursorColor,
    this.fillColor,
    this.enabledBorder,
    this.focusedBorder,
    this.disabledBorder,
    this.errorBorder,
    this.filled,
    this.prefixIconColor,
    this.errorStyle,
    this.initialCountryCode,
    this.disableLengthCheck,
    this.dropdownIconPosition,
    this.dropdownIcon,
    this.flagsButtonPadding,
    this.showCountryFlag,
  });

  final TextEditingController? controller;
  final String? label;
  final String hintText;
  final String countryCode;
  final TextStyle? hintStyle;
  final bool noPadding;
  final bool isRequired, enabled;
  final IconData? suffixIcon;
  final void Function(String?)? onChanged;
  final VoidCallback? suffixPress;
  final TextStyle? labelStyle;
  final TextStyle? textFiledTextStyle;
  final TextStyle? dropDownTextStyle;
  final Color? cursorColor;
  final Color? fillColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? disabledBorder;
  final InputBorder? errorBorder;
  final bool? filled;
  final Color? prefixIconColor;
  final TextStyle? errorStyle;
  final String? initialCountryCode;
  final bool? disableLengthCheck;
  final IconPosition? dropdownIconPosition;
  final Icon? dropdownIcon;
  final EdgeInsetsGeometry? flagsButtonPadding;
  final bool? showCountryFlag;

  @override
  State<MainPhoneTextFormField> createState() => _MainPhoneTextFormFieldState();
}

class _MainPhoneTextFormFieldState extends State<MainPhoneTextFormField> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (widget.noPadding == true)
          ? EdgeInsets.zero
          : EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (widget.label != null) ...[
            Text("${widget.label!} ${widget.isRequired ? "*" : ""}",
                style: widget.labelStyle),
            SizedBox(height: 12.h),
          ],
          Form(
            key: formKey,
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: IntlPhoneField(
                  autovalidateMode: AutovalidateMode.disabled,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(11),
                    ArabicToEnglishNumberFormatter(),
                    FilteringTextInputFormatter.digitsOnly,
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    FilteringTextInputFormatter.deny(
                        RegExp('')), // Disallow all pasting
                        
                  ],
                  enabled: widget.enabled,
                  controller: widget.controller,
                  cursorColor: widget.cursorColor ?? cPrimaryColor,
                  showCountryFlag: widget.showCountryFlag ?? true,
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.left,
                  style: widget.hintStyle,
                  flagsButtonPadding: widget.flagsButtonPadding ??
                      EdgeInsetsDirectional.only(start: 8.w),
                  dropdownIcon: widget.dropdownIcon ??
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 16.sp,
                      ),
                  dropdownTextStyle: widget.dropDownTextStyle,
                  dropdownIconPosition:
                      widget.dropdownIconPosition ?? IconPosition.trailing,
                  decoration: InputDecoration(
                      suffixIcon: widget.suffixIcon == null
                          ? null
                          : InkWell(
                              onTap: widget.suffixPress,
                              child: Icon(
                                widget.suffixIcon,
                              ),
                            ),
                      border: widget.enabledBorder ?? mainEnabledInputBorder,
                      filled: widget.filled ?? true,
                      fillColor: widget.fillColor ?? cLightGreyColor,
                      prefixIconColor: widget.prefixIconColor ?? Colors.black,
                      errorStyle: widget.errorStyle,
                      focusedBorder:
                          widget.focusedBorder ?? mainEnabledInputBorder,
                      enabledBorder:
                          widget.enabledBorder ?? mainEnabledInputBorder,
                      errorBorder: widget.errorBorder ??
                          mainEnabledInputBorder.copyWith(),
                      disabledBorder: widget.disabledBorder,
                      hintText: widget.hintText,
                      hintStyle: widget.hintStyle),
                  initialCountryCode: widget.initialCountryCode ?? 'EG',
                  disableLengthCheck: widget.disableLengthCheck ?? false,
                  onChanged: (phone) {}),

            ),
          ),
        ],
      ),
    );
  }
}

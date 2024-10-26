import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;

import '../utils/app_colors.dart';
import '../utils/text_styles.dart';

class MainPasswordTextFormField extends StatefulWidget {
  const MainPasswordTextFormField(
      {super.key,
      this.controller,
      this.label,
      this.noPadding = false,
      this.keyboardType,
      required this.hintText,
      this.onChanged,
      this.maxLines = 1,
      this.isRequired = false,
      this.labelStyle,
      this.textFiledTextStyle,
      this.cursorColor,
      this.fillColor,
      this.hintStyle,
      this.enabledBorder,
      this.focusedBorder,
      this.disabledBorder,
      this.showPasswordIcon,
      this.hidePasswordIcon,
      this.filled});

  final TextEditingController? controller;
  final int maxLines;
  final String? label;
  final bool noPadding;
  final TextInputType? keyboardType;
  final String hintText;
  final bool isRequired;
  final TextStyle? labelStyle;
  final TextStyle? textFiledTextStyle;
  final Color? cursorColor;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? disabledBorder;
  final Widget? showPasswordIcon;
  final Widget? hidePasswordIcon;
  final bool? filled;
  final void Function(String?)? onChanged;

  @override
  State<MainPasswordTextFormField> createState() =>
      _MainPasswordTextFormFieldState();
}

class _MainPasswordTextFormFieldState extends State<MainPasswordTextFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.noPadding == true
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
          TextFormField(
            maxLines: widget.maxLines,
            onChanged: widget.onChanged,
            controller: widget.controller,
            cursorColor: widget.cursorColor,
            keyboardType: widget.keyboardType ?? TextInputType.text,
            textAlignVertical: TextAlignVertical.center,
            obscureText: obscureText,
            style: widget.textFiledTextStyle,
            decoration: InputDecoration(
                filled: widget.filled,
                fillColor: widget.fillColor,
                hintText: widget.hintText,
                constraints: BoxConstraints(
                  minHeight: 24.h,
                  maxHeight: 64.h,
                ),
                alignLabelWithHint: true,
                prefixIconConstraints:
                    BoxConstraints.expand(width: 24.w, height: 0.h),
                prefixIcon: const SizedBox(),
                suffixIconConstraints:
                    BoxConstraints.expand(width: 32.w, height: 24.h),
                suffixIcon: InkWell(
                  onTap: () => setState(() {
                    obscureText = !obscureText;
                  }),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(end: 12.h),
                    child: obscureText == false
                        ? widget.showPasswordIcon ??
                            const Icon(Icons.visibility)
                        : widget.hidePasswordIcon ??
                            const Icon(Icons.visibility_off),
                  ),
                ),
                hintStyle: widget.hintStyle ??
                    ts14White400,/* .copyWith(color: cNewGreyColor), */
                enabledBorder: widget.enabledBorder,
                focusedBorder: widget.focusedBorder,
                border: widget.enabledBorder,
                disabledBorder: widget.disabledBorder),
          )
        ],
      ),
    );
  }
}

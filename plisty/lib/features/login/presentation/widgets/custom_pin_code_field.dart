import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../core/utils/app_colors.dart';

class CustomPinCodeWidget extends StatelessWidget {
  const CustomPinCodeWidget(
      {super.key,
      this.pinCodeController,
      this.onCompleted,
      this.validator,
      this.keyboardType,
      this.onChange,
      this.length,
      this.width,
      this.height,
      this.textDirection,
      this.autoFocus = true,
      this.autoUnFocus = true,
      this.inactiveColor,
      this.activeColor});

  final TextEditingController? pinCodeController;
  final void Function(String)? onCompleted;
  final void Function(String)? onChange;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int? length;
  final double? width, height;
  final TextDirection? textDirection;
  final bool autoFocus;
  final bool autoUnFocus;
  final Color? inactiveColor, activeColor;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: textDirection ?? TextDirection.ltr,
      child: PinCodeTextField(
        cursorColor: cPrimaryColor,
        enableActiveFill: true,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        animationDuration: const Duration(milliseconds: 300),
        animationType: AnimationType.fade,
        onChanged: onChange,
        validator: validator,
        appContext: context,
        length: length ?? 4,
        textStyle: TextStyle(
            fontSize: 16.sp, fontWeight: FontWeight.w700, color: cWhiteColor),
        controller: pinCodeController,
        autoFocus: autoFocus,
        autoUnfocus: autoUnFocus,
        autoDismissKeyboard: autoUnFocus,
        onCompleted: onCompleted,
        keyboardType: keyboardType ?? TextInputType.number,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        hintCharacter: '-',
        hintStyle: const TextStyle(color: cHintColor),
        pinTheme: PinTheme(
          fieldOuterPadding: EdgeInsets.symmetric(
            horizontal: .5.w,
          ),
          shape: PinCodeFieldShape.box,
          borderWidth: .5,
          borderRadius: BorderRadius.circular(8.r),
          activeBorderWidth: 0,
          selectedColor: activeColor ?? Colors.transparent,
          inactiveColor: inactiveColor ?? cLightBlackColor.withOpacity(.5),
          activeColor: activeColor ?? cPrimaryColor,
          disabledColor: cErrorColor,
          errorBorderColor: cErrorColor,
          selectedFillColor: cLightBlackColor.withOpacity(.5),
          inactiveFillColor: cLightBlackColor.withOpacity(.5),
          activeFillColor: cLightBlackColor,
          errorBorderWidth: .5,
          fieldWidth: width ?? 70.w,
          fieldHeight: height ?? 56.h,
        ),
      ),
    );
  }
}

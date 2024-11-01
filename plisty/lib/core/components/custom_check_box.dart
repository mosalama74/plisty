import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/app_gradients.dart';
import '../utils/text_styles.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox(
      {super.key, required this.checkBoxLable, this.suffixText, this.checkBoxLableStyle});
  final String checkBoxLable;
  final String? suffixText; 
  final TextStyle? checkBoxLableStyle; 
  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 18.w,
          height: 18.h,
          decoration: BoxDecoration(
            gradient: bookingDateGradient,
            borderRadius: BorderRadius.circular(1.r),
          ),
          child: Checkbox(
              checkColor: Colors.transparent,
              activeColor: cCheckBoxBgColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.r),
              ),
              mouseCursor: MouseCursor.defer,
              value: _isSelected,
              onChanged: (value) {
                setState(() {
                  _isSelected = value!;
                });
              }),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          widget.checkBoxLable,
          style:widget.checkBoxLableStyle?? ts14White400,
        ),
      ],
    );
  }
}

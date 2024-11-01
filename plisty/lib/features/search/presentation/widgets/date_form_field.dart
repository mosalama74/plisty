import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../../../../core/components/main_text_form_field.dart';
import '../../../../core/utils/app_colors.dart';

final formatter = DateFormat.yMd();

class DateFormField extends StatefulWidget {
  const DateFormField({super.key});

  @override
  State<DateFormField> createState() => _DateFormFieldState();
}

class _DateFormFieldState extends State<DateFormField> {
    final _dateController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MainTextFormField(
                controller: _dateController,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                hintText: 'اختر',
                hintStyle: ts14White400.copyWith(
                  color: cDarkWhite2Color,
                ),
                suffixWidget: IconButton(
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2080 - 01 - 01),
                      initialDate: DateTime.now(),
                    ).then((value) {
                      _dateController.text = formatter.format(value!);
                    });
                  },
                  icon: const Icon(
                    Icons.calendar_month_outlined,
                    color: cDarkWhite2Color,
                  ),
                ),
                fillColor: cDarkGreyColor);
  }
}
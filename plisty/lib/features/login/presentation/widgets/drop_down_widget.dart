import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';

import '../../../../core/utils/text_styles.dart';

class LocalizeWidget extends StatefulWidget {
  const LocalizeWidget({super.key});

  @override
  State<LocalizeWidget> createState() => _LocalizeWidgetState();
}

class _LocalizeWidgetState extends State<LocalizeWidget> {
  String _dropDownValue = 'English';
  final _items = ['English', 'العربيه'];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Directionality(
          textDirection: TextDirection.ltr,
          child: DropdownButton(
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            items: _items.map((String item) {
              return DropdownMenuItem(
                value: item,
                child: Text(
                  item,
                  style: ts14Black400.copyWith(color: cWhiteColor),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _dropDownValue = newValue!;
                
              });
            },
            value: _dropDownValue,
            iconSize: 24.h,
            elevation: 0,
            style: ts14Black400.copyWith(color: cWhiteColor),
            dropdownColor: cLightBlackColor,
            iconDisabledColor: cWhiteColor,
            iconEnabledColor: cWhiteColor,
            underline: Container(),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        SizedBox(
          width: 12.w,
        ),
        const Icon(
          Icons.language,
          color: cWhiteColor,
          size: 20,
        ),
      ],
    );
  }
}

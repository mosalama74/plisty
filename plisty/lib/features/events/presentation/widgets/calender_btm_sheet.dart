import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:plisty/core/components/main_elevated_gradient_button.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';

import 'time_btm_sheet.dart';

class CalendarBottomSheet extends StatefulWidget {
  const CalendarBottomSheet({super.key});

  @override
  State<CalendarBottomSheet> createState() => _CalendarBottomSheetState();
}

class _CalendarBottomSheetState extends State<CalendarBottomSheet> {
  DateTime _selectedDay = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cLightBlackColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
              top: 16.h, start: 49.67.w, end: 49.67.w, bottom: 43.69.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TableCalendar(
                locale: 'en-US',
                firstDay: DateTime.utc(2024, 1, 1),
                lastDay: DateTime.utc(2050, 12, 31),
                focusedDay: _selectedDay,
                headerStyle: HeaderStyle(
                  titleTextFormatter: (date, locale) =>
                      DateFormat(' dMMMM, y', 'en_US').format(date),
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: const TextStyle(
                    color: cWhiteColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                  leftChevronIcon: const Icon(
                    Icons.chevron_left,
                    color: cWhiteColor,
                  ),
                  rightChevronIcon: const Icon(
                    Icons.chevron_right,
                    color: cWhiteColor,
                  ),
                ),
                calendarFormat: CalendarFormat.month,
                startingDayOfWeek: StartingDayOfWeek.saturday,
                daysOfWeekVisible: false,
                selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
                onDaySelected: _onDaySelected,
                calendarStyle: const CalendarStyle(
                  defaultTextStyle: TextStyle(color: cWhiteColor),
                  selectedDecoration: BoxDecoration(
                    color: cPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  todayDecoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  outsideDaysVisible: false,
                  withinRangeTextStyle:
                      TextStyle(color: cWhiteColor, locale: Locale('en_US')),
                ),
              ),
              SizedBox(height: 30.39.h),
              MainElevatedGradientButton(onPressed: () {
                Navigator.pop(context);
                showModalBottomSheet(context: context, builder: (context) => const TimeBtmSheet());
              }, label: 'اختر'),
            ],
          ),
        ),
      ),
    );
  }
}

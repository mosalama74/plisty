import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/features/home/presentation/widgets/event_vertical_item.dart';

class HorizontalListOfEvents extends StatelessWidget {
  const HorizontalListOfEvents(
      {super.key,
      required this.img,
      required this.eventName,
      required this.eventSort,
      required this.eventDate,
      required this.eventLocation});

  final String img;
  final String eventName;
  final String eventSort;
  final String eventDate;
  final String eventLocation;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>  EventVerticalItem(
            img: img,
            eventName: eventName,
            eventSort: eventSort,
            eventDate: eventDate ,
            eventLocation: eventLocation,
          ),
          separatorBuilder: (context, index) => SizedBox(
                width: 16.w,
              ),
          itemCount: 5),
    );
  }
}

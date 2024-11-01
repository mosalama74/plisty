import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';
import 'additions_on_booking_tickets.dart';

class BookingTicketsItem extends StatefulWidget {
  const BookingTicketsItem(
      {super.key,
      required this.isExistAdditions,
      required this.ticketType,
      this.ticketPrice});
  final String ticketType;
  final String? ticketPrice;
  final bool isExistAdditions;
  @override
  State<BookingTicketsItem> createState() => _BookingTicketsItemState();
}

class _BookingTicketsItemState extends State<BookingTicketsItem> {
  int _numOfTickets = 0;
  int _MaxnumOfTickets = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cDarkGreyColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.ticketType,
                    style: ts14White400,
                  ),
                  Text(
                    widget.ticketPrice ?? '105.00 درهم',
                    style: ts14White700,
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _MaxnumOfTickets > _numOfTickets
                        ? Container(
                          width: 80.w,
                          height: 36.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w
                          ),
                            decoration: BoxDecoration(
                              color: cSecondaryColor,
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (_numOfTickets > 0) {
                                        _numOfTickets--;
                                       
                                      }
                                    });
                                  },
                                  child: const Icon(
                                    Icons.remove,
                                    color: cWhiteColor,
                                    size: 14,
                                  ),
                                ),
                                Text(
                                  _numOfTickets.toString(),
                                  style: ts14White700,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _numOfTickets++;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.add,
                                    color: cWhiteColor,
                                    size: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(
                          width: 80.w,
                          height: 36.h,
                            padding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 5.w),
                            decoration: BoxDecoration(
                              color: cFgColor2,
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: Center(
                              child: Text(
                                'بيعت بالكامل',
                                style: ts12White400,
                              ),
                            ),
                          ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          widget.isExistAdditions
              ? const AdditionsOnBookingTickets()
              : Container(),
        ],
      ),
    );
  }
}

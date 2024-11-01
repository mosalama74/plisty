import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/features/home/presentation/widgets/event_horizontal_item.dart';

class HorizontalListOfHorizontalEvent extends StatelessWidget {
  const HorizontalListOfHorizontalEvent({super.key, this.height});
  final double? height;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
          height: 300.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) => Column(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: EdgeInsetsDirectional.only(top: height ?? 10.h, end: 10.w),
                  child: const EventHorizontalItem(
                      img:
                          'https://s3-alpha-sig.figma.com/img/e5c4/2da1/c35ae13fb261d8097edcd0656d6d1ae3?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lITQuE45NFowmPWIcU3zkspUsbj5KvQagARe7CjIskva3glr5cTWte6zcoKsjXCUKXYJOtDOYYLg9OTya1bp7isMU40-KUBTimm23koupUKwuMwGbdVcMCEFSOxDJAvyJYbxz1SwHgpTlUM4JcFgC19Bu8G65cM0miRrfTzEmaySnpQvYrCukcSDm252VwUkJyAHz1~T04oS2JBdcxTvJP-HX0anXfolvnW6~bFFSWLFZ6zDFMMz~naP4vflDTfjmU3xL53BL1F~1SUA09k68noN2VXJ7BvtA2l0I6acORIrtL8Up0k-pNIk-5tNVyVStF2pSnwLdKeG9W8bQJmwqg__',
                      eventName: 'حفلة مائية',
                      eventSort: 'موسيقى',
                      eventDate: '02، ديسمبر، 12:00 م',
                      eventLocation: 'دبي، برج خليفة',),
                ),
              ),
            ),
            itemCount: 3,
          ),
        );
  }
}
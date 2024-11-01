import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

List<String> eventHighlights = [
  'https://s3-alpha-sig.figma.com/img/5fc3/a190/feb3a5074694bbbdbe3c08ef061c31d1?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MGpbQ~wReJgpH9Ajxx9mr8Xb~YIWIsdyC1682VtPrzF97SMJSbKeXULBtcQehSCtg5-ujovBYxTTZLZdhpMptE8P2t3xwZeX7T04T4KLec6lIXOgEpfTizqL0tSUNkGmU-4r0gsICSoDZrogSJURsRr1T2CUC1bMn5FpRTTtS4RZLsk~Gj5sLsdvqlDtaRDXQ849kVk66lJLm7lI6S1stxcXd8wj21mUPmWxByTwXlUKRzh87Vc-VuZzQAFkF4YUkjwbJJS6l6eKHTHC6XfJJkTB6XuxBblrp~Z6g3p1IQLMqLc6kLMbSbzFUbn6WsCcSdsL47sIqDNjDaObyDnqHg__',
  'https://s3-alpha-sig.figma.com/img/3b9c/b2d8/1de4f668a466cf82f19b953a800b776d?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=AQxDD9iVkRXyJ9pL1S0bd1fGF2u7sVojJKA17sqzAMm2KbxzEaVAF-QeuCRdU~80NSbK7w8jtN6rSDFj48lB8SiCu9CIwaVrW7-h-b5qmJJsCsVYQnuHYsz1A1KXA3hir05KhFlbwLQ6e9qBu4UsHyBuJwUBIQMeSnI99xXqYSQXrCDXumoGH6NmaSlkQF~7kobgqz3yYw7N3kEWfw1JTcENd87uRl-JowMYLNFvy367PmxNhLc53tSAOAdb4bjCGqy8sRJvQrDzZoJ-JciKgoyaq9A1Ysub1oyEycNfYHFlML3iD~0tpqUBVjpQL0keXT4GDja2OwkFQ~83iGHMsA__',
  'https://s3-alpha-sig.figma.com/img/fc7f/2ed8/c6b0af9d1846e25d599131f7c40e3ed6?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ew~epwwgBPiG8OH8S6CjBgBPaehR1r9qtyxgDuVfVMbgIJlfhcYKW2hxx1uMHPSs1KOzRM28pdRXZnzus-vJ9~C5HjZzCsn7x~uIBpeMQ1VDxxXs5DlO96BzGP0p8lOiO~xGFjXf2lyWDfQ6Q6DGEMu8umJiEd1OT6j81wbCXYNJJ4~Xq0dq1FUSXuK-NWt6EzZIw-VTw6S491sV7AAEDzrl1HryWGGtIajNDT6gia7QkAPlapzp2AQlRKpgqCPM0TfBig7yCfNWjSxHHvVVF7KBfNuYX~yEPrs2nFc3kkv2cnpDXOt2yrrU-ZzDeTwD5rcxA-AgBhovjLq0qeyppg__',
];

class ShowEventHighlights extends StatefulWidget {
  const ShowEventHighlights({super.key});

  @override
  State<ShowEventHighlights> createState() => _ShowEventHighlightsState();
}

class _ShowEventHighlightsState extends State<ShowEventHighlights> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 222.h,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          SizedBox(
            height: 172.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemExtent: MediaQuery.sizeOf(context).width - 48.w,
                itemBuilder: (context, index) => Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Image.network(
                        eventHighlights[_selectedIndex],
                        fit: BoxFit.cover,
                      ),
                    ),
                itemCount: eventHighlights.length),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: List.generate(
              eventHighlights.length,
              (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                      end: 20.w,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: 40.w,
                          height: 40.h,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            color: _selectedIndex == index
                                ? Colors.transparent
                                : chighlight4groundColor,
                            image: DecorationImage(
                                image: NetworkImage(eventHighlights[index]),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child:Container(
                            decoration: BoxDecoration(
                            color: _selectedIndex == index
                                ? Colors.transparent
                                : chighlight4groundColor.withOpacity(.5),),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

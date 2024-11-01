import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/features/events/presentation/widgets/location_item.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../core/utils/app_colors.dart';
import 'organizer_item.dart';
import 'rating_item.dart';

class LocationRatingsOrganizers extends StatefulWidget {
  const LocationRatingsOrganizers({super.key});

  @override
  State<LocationRatingsOrganizers> createState() =>
      _LocationRatingsOrganizersState();
}

class _LocationRatingsOrganizersState extends State<LocationRatingsOrganizers> {
  bool _isLocation = false;
  bool _isRating = false;
  bool _isOrganizer = false;
  int _initialIndx = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ToggleSwitch(
          minWidth: MediaQuery.of(context).size.width,
          minHeight: 32.h,
          fontSize: 14.0.sp,
          dividerColor: Colors.transparent,
          initialLabelIndex: _initialIndx,
          activeBgColor: const [cSecondaryColor],
          activeFgColor: Colors.white,
          inactiveBgColor: cDarkGreyColor.withOpacity(.2),
          inactiveFgColor: cWhiteColor,
          totalSwitches: 3,
          labels: const [
            'الموقع',
            'التقييمات',
            'المنظمين',
          ],
          cornerRadius: 8.91.r,
          radiusStyle: true,
          onToggle: (index) {
            switch (index) {
              case 0:
                setState(() {
                  _isLocation = true;
                  _isRating = false;
                  _isOrganizer = false;
                  _initialIndx = index!;
                });
                break;
              case 1:
                setState(() {
                  _isRating = true;
                  _isLocation = false;
                  _isOrganizer = false;
                  _initialIndx = index!;
                });
                break;
              case 2:
                setState(() {
                  _isOrganizer = true;
                  _isRating = false;
                  _isLocation = false;
                  _initialIndx = index!;
                });
                break;
            }
          },
        ),
        SizedBox(
                height: 16.h,
              ),
        if (_isLocation)
          const LocationItem(),
        if (_isRating)
          const RatingItem(),
        if (_isOrganizer)
        const OrganizerItem(),
      ],
    );
  }
}

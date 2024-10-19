import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class RatingStar extends StatefulWidget {
  const RatingStar({
    super.key,
    this.itemCount,
    this.itemSize,
    this.initialRating,
    this.updateOnDrag,
  });

  final int? itemCount;
  final double? itemSize, initialRating;
  final bool? updateOnDrag;

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  double rateVal = 0.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          direction: Axis.horizontal,
          allowHalfRating: false,
          ignoreGestures: !(widget.updateOnDrag ?? false),
          initialRating: widget.initialRating ?? 4,
          minRating: 0,
          glow: widget.updateOnDrag ?? false,
          glowColor: cPrimaryColor,
          itemCount: widget.itemCount ?? 5,
          updateOnDrag: widget.updateOnDrag ?? false,
          unratedColor: cGreyColor,
          itemSize: widget.itemSize ?? 16,
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: cYellowColor,
          ),
          onRatingUpdate: (value) => setState(() {
            rateVal = value;
          }),
        ),
        SizedBox(
          width: 5.w,
        ),
        Text('$rateVal '),
        
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class FavouriteIcon extends StatefulWidget {
  const FavouriteIcon({super.key});

  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  bool _isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 9.88.h, start: 10.4.w),
      child: InkWell(
        onTap: () {
          setState(() {
            _isFavourite = !_isFavourite;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.all(6),
          decoration: const ShapeDecoration(
            shape: CircleBorder(),
            color: cNavColor,
          ),
          child: Icon(
              _isFavourite ? Icons.favorite
             : Icons.favorite_border_outlined,
            color: _isFavourite ? cRedColor: cWhiteColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}

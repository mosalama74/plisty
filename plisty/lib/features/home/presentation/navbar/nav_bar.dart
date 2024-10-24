import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_colors.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.onTap, required this.pageIndex});
  final int pageIndex;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      notchMargin: 0,
      child: Container(
        decoration: BoxDecoration(
          color: cNavColor,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Row(
          children: [
            navItem(
              'assets/icons/home-2.svg',
              pageIndex == 0,
              onTap: onTap(0),
            ),
            navItem(
              'assets/icons/discover.svg',
              pageIndex == 1,
              onTap: onTap(1),
            ),
            navItem(
              'assets/icons/discount-shape.svg',
              pageIndex == 2,
              onTap: onTap(2),
            ),
            navItem(
              'assets/icons/ticket.svg',
              pageIndex == 3,
              onTap: onTap(3),
            ),
            navItem(
              'assets/icons/user.svg',
              pageIndex == 4,
              onTap: onTap(4),
            ),
          ],
        ),
      ),
    );
  }

  Widget navItem(String icon, bool selected, {Function()? onTap}) {
    return Expanded(
      child: InkWell(
          onTap: onTap,
          child: Center(
            child: SvgPicture.asset(
              icon,
              height: 24,
              width: 24,
              color: selected ? cPrimaryColor : cDarkWhiteColor2,
            ),
          )),
    );
  }
}

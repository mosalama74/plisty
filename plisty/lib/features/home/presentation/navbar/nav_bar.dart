import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.onTap, required this.pageIndex});
  final int pageIndex;
  final Function(int) onTap;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
              widget.pageIndex == 0,
              onTap: widget.onTap(0),
            ),
            navItem(
              'assets/icons/discover.svg',
              widget.pageIndex == 1,
              onTap: widget.onTap(1),
            ),
            navItem(
              'assets/icons/discount-shape.svg',
              widget.pageIndex == 2,
              onTap: widget.onTap(2),
            ),
            navItem(
              'assets/icons/ticket.svg',
              widget.pageIndex == 3,
              onTap: widget.onTap(3),
            ),
            navItem(
              'assets/icons/user.svg',
              widget.pageIndex == 4,
              onTap: widget.onTap(4),
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

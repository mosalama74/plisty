import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/features/events/presentation/pages/events.dart';
import 'package:plisty/features/home/presentation/screens/home_screen.dart';
import 'package:plisty/features/home/presentation/screens/page3.dart';
import 'package:plisty/features/home/presentation/screens/page4.dart';
import 'package:plisty/features/home/presentation/screens/page5.dart';



class DashpoardScreen extends StatefulWidget {
  const DashpoardScreen({super.key});

  @override
  State<DashpoardScreen> createState() => _DashpoardScreenState();
}

class _DashpoardScreenState extends State<DashpoardScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    Events(),
    Page3(),
    Page4(),
    Page5(),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomAppBar(
        height: 80.h,
        color: Colors.transparent,
        elevation: 0,
        notchMargin: 0,
        child: Container(
          decoration: BoxDecoration(
            color: cNavColor,
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Row(
            children: List.generate(
              5,
              (index) {
                if (index == 0) {
                  return navItem(
                    index,
                    'assets/icons/home-2.svg',
                  );
                }else if(index == 1){
                  return navItem(
                    index,
                'assets/icons/discover.svg',
                  );
               
                }else if(index == 2){
                  return navItem(
                    index,
                'assets/icons/discount-shape.svg',
                  );
                
                }else if(index == 3){
                  return navItem(
                    index,
                'assets/icons/ticket.svg',
                  );
                
                }else {
                 return navItem(
                    index,
                'assets/icons/user.svg',
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget navItem(int index, String icon) {
    return Expanded(
      child: InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Center(
            child: SvgPicture.asset(
              icon,
              height: 24,
              width: 24,
              color: currentIndex == index ? cPrimaryColor : cDarkWhiteColor2,
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/features/home/presentation/screens/home_screen.dart';
import 'package:plisty/features/home/presentation/screens/page2.dart';
import 'package:plisty/features/home/presentation/screens/page3.dart';
import 'package:plisty/features/home/presentation/screens/page4.dart';
import 'package:plisty/features/home/presentation/screens/page5.dart';

import '../navbar/nav_bar.dart';

class DashpoardScreen extends StatefulWidget {
  const DashpoardScreen({super.key});

  @override
  State<DashpoardScreen> createState() => _DashpoardScreenState();
}

class _DashpoardScreenState extends State<DashpoardScreen> {
  int currentIndex = 0;
  final List<Widget> screens = const[
    HomeScreen(),
    Page2(),
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
      bottomNavigationBar: NavBar(
        pageIndex: currentIndex,
      onTap: (index){
         if (index == currentIndex) {
          } else {
                          currentIndex = 0;

           /*  setState(() {
              currentIndex = index;
            }); */
          }
      },
      ),
    );
  }
}

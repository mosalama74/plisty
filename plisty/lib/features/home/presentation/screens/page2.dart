import 'package:flutter/material.dart';
import 'package:plisty/core/utils/app_colors.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('page2',style: TextStyle(color: cWhiteColor),),
      ),
    );
  }
}

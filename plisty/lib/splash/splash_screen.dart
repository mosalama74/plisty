import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/login/presentation/pages/login_screen.dart';
import '../features/on_boarding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), ()async {
            final prefs = await SharedPreferences.getInstance();

      if (prefs.getBool('onBoarding') == true) {
        context.navigateTo(const LoginScreen());
      } else {
        context.navigateTo(const OnBoardingScreen());
      }
    },);

  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:Stack(
        children: [
          Image.asset(
              'assets/images/Splash Screen.png',height: height,fit: BoxFit.cover,
          ),
          Center(
            child: SvgPicture.asset(
              'assets/svg/logo.svg'
            ),
          ),
        
      ]),
    );
  }
}
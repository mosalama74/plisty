import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/generated/l10n.dart';
import 'package:plisty/splash/splash_screen.dart';

import 'features/on_boarding/on_boarding_screen.dart';

class PlistyApp extends StatelessWidget {
  const PlistyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              locale: const Locale('ar'),
              localizationsDelegates: const [
                //l;
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                fontFamily: 'Nunito',
                bottomAppBarTheme: const BottomAppBarTheme(
                  color: Colors.white,

                  // Set the default color here if needed
                ),
              ),
              home: const SplashScreen(),
              );
        });
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/text_styles.dart';
import '../../core/components/main_elevated_gradient_button.dart';
import '../login/presentation/pages/login_screen.dart';
import 'on_boarding_items.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final itemElement = OnBoardingItems();
  final _pageController = PageController();
  bool isLastPage = false;
  int _currentPage = 0;


@override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (index) {
              setState(() {
                isLastPage = itemElement.items.length - 1 == index;
              });
            },
            itemCount: itemElement.items.length,
            controller: _pageController,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                         itemElement.items[index].image,
                         
                      ),fit: BoxFit.cover,
                    )
                  ),
                  ),
                 
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsetsDirectional.only(start: 18.w, end: 10.w),
                    padding: EdgeInsetsDirectional.only(
                      bottom: 58.h,
                      start: 24.w,
                      end: 24.w,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildSmoothPageIndicator(),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          itemElement.items[index].text,
                          style: ts20White700,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          itemElement.items[index].subText!,
                          style: ts14White400,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        MainElevatedGradientButton(
                          label: 'ابدأ الأن',
                          onPressed: () async {
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setBool('onBoarding', true);

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSmoothPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.all(8.0),
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            color: cWhiteColor,
            gradient: _currentPage == index
                ? const LinearGradient(
                    colors: [
                      cPrimaryColor,
                      cSecondaryColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  )
                : const LinearGradient(
                    colors:[cWhiteColor, cWhiteColor],
                  ),
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:plisty/core/components/main_elevated_gradient_button.dart';
import 'package:plisty/core/components/main_phone_text_form_field.dart';
import 'package:plisty/core/components/main_text_form_field.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/core/utils/text_styles.dart';
import 'package:plisty/features/login/presentation/pages/otp_screen.dart';
import 'package:plisty/features/login/presentation/widgets/drop_down_widget.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../../../../core/utils/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isCreateAccount = false;
  int initialIndx = 0;
  var phoneController = TextEditingController();
  var userNameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/Login.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsetsDirectional.only(top: 70.h, start: 44.w, end: 41.w),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/logo.svg',
                    width: 128.w,
                  ),
                  SizedBox(
                    height: 69.25.h,
                  ),
                  ToggleSwitch(
                    minWidth: MediaQuery.of(context).size.width,
                    minHeight: 32.h,
                    fontSize: 14.0.sp,
                    initialLabelIndex: initialIndx,
                    activeBgColor: const [cSecondaryColor],
                    activeFgColor: Colors.white,
                    inactiveBgColor: cDarkGreyColor.withOpacity(.2),
                    inactiveFgColor: cWhiteColor,
                    totalSwitches: 2,
                    labels: const [
                      'تسجيل الدخول',
                      'إنشاء حساب',
                    ],
                    cornerRadius: 8.91.r,
                    radiusStyle: true,
                    onToggle: (index) {
                      if (index == 0) {
                        setState(() {
                          _isCreateAccount = false;
                          initialIndx = index!;
                        });
                      } else {
                        setState(() {
                          _isCreateAccount = true;
                          initialIndx = index!;
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  if (_isCreateAccount)
                    MainTextFormField(
                      hintText: 'اسم المستخدم',
                      hintStyle: ts14White400.copyWith(
                        color: cHintColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r)),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: const BorderSide(color: cErrorColor),
                      ),
                      fillColor: const Color(0xFF1E1E1E).withOpacity(.9),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      controller: userNameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'رقم الهاتف غير مسجل';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                  if (_isCreateAccount)
                    SizedBox(
                      height: 10.h,
                    ),
                  MainPhoneTextFormField(
                    countryCode: '971',
                    initialCountryCode: 'AE',
                    hintText: 'رقم الهاتف',
                    hintStyle: ts14White400.copyWith(
                        color: cHintColor.withOpacity(.5)),
                    dropDownTextStyle: ts14White500,
                    prefixIconColor: cHintColor.withOpacity(.5),
                    showCountryFlag: false,
                    controller: phoneController,
                    fillColor: cLightBlackColor.withOpacity(.9),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r)),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: cErrorColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    disableLengthCheck: true,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.5.w),
                    child: MainElevatedGradientButton(
                        onPressed: () {
                          context.navigateTo(const OtpScreen(
                            phone: '',
                            code: '',
                            token: '',
                          ));
                        },
                        label: 'تسجيل الدخول'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      socialMediaIcon(
                        Bootstrap.x,
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 19.2.w,
                      ),
                      socialMediaIcon(
                        Bootstrap.apple,
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 19.2.w,
                      ),
                      socialMediaIcon(
                        EvaIcons.google,
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 19.2.w,
                      ),
                      socialMediaIcon(
                        EvaIcons.facebook,
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'تسجيل الدخول كزائر',
                      style: ts16White500.copyWith(color: cTextbtnColor),
                    ),
                  ),
                  SizedBox(
                    height: _isCreateAccount
                        ? MediaQuery.of(context).size.height * .1
                        : MediaQuery.of(context).size.height * .18,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        LocalizeWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget socialMediaIcon(IconData? icon, {required Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6.4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.4.r),
          gradient: const LinearGradient(
              colors: [
                cPrimaryColor,
                cSecondaryColor,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.1, 0.8]),
        ),
        child: Icon(
          icon,
          color: cWhiteColor,
        ),
      ),
    );
  }
}

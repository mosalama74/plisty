import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plisty/core/utils/extentions.dart';
import 'package:plisty/features/home/presentation/screens/dashpoard_screen.dart';
import 'package:plisty/features/login/presentation/widgets/drop_down_widget.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../../core/components/main_elevated_button.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../home/presentation/screens/home_screen.dart';
import '../../cubit/otp_cubit.dart';
import '../widgets/custom_pin_code_field.dart';
import '../widgets/reset_code_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen(
      {super.key,
      required this.phone,
      required this.code,
      required this.token});
  final String phone;
  final String token;
  final String code;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final CountdownController controller = CountdownController(autoStart: true);
  final TextEditingController pinCodeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    // pinCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit(sl()),
      child: Container(
         decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/Login.png',
                  ), // Your image path
                  fit: BoxFit.cover,
                ),
              ),

        child: Scaffold(
          backgroundColor: Colors.transparent,
        body: 
            Padding(
              padding: EdgeInsets.only(top: 69.25.h, left: 41.w, right: 24.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: cLightBlackColor.withOpacity(.4),
                          iconSize: 11.5.h,
                          padding: EdgeInsets.all(10.h),
                        ),
                          onPressed: () {
                            context.navigateBack();
                          },
                          icon: Icon(Icons.arrow_back_ios_outlined,
                              color: cWhiteColor, size: 15.h)),
                    ),
                    SvgPicture.asset(
                      'assets/svg/logo.svg',
                      width: 128.w,
                    ),
                    SizedBox(
                      height: 69.25.h,
                    ),
                    Text(
                      'التحقق من رقم الهاتف',
                      style: ts24White700,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'ادخل رمز التحقق المكون من 4 أرقام الذي أرسل إلى',
                      style: ts13White700,
                    ),
                    Text(
                      '+971 1234567890 ',
                      style: ts13White600,
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Form(
                      key: formKey,
                      child: CustomPinCodeWidget(
                        pinCodeController: pinCodeController,
                        onCompleted: (otp) {},
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "";
                          } else if (value.length < 4) {
                            return "";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    BlocConsumer<OtpCubit, OtpState>(
                      listener: (context, state) {
                        // if (state is VerifyOtpSuccessState &&
                        //     widget.code.isEmpty) {
                        //   context.showSuccessSnackBar(
                        //       state.defaultModel.statusMsg ?? '');
                        //   context.go(loginRoutePath);
                        // } else if (state is VerifyOtpErrorState &&
                        //     widget.code.isEmpty) {
                        //   context.showErrorSnackBar(state.message);
                        // }
                      },
                      builder: (context, state) {
                        return MainElevatedButton(
                          
                          label: "إرسال",
                          isLoading: state is VerifyOtpLoadingState,
                          onPressed: () {
                            // if (formKey.currentState!.validate()) {
                            //   if (widget.code ==
                            //       pinCodeController.text) {
                            //     context.pushNamed(changePasswordRoute,
                            //         queryParameters: {
                            //           'phone': widget.phone,
                            //         });
                            //     context.showSuccessSnackBar(
                            //         "تم التحقق بنجاح");
                            //   } else if (widget.code.isNotEmpty &&
                            //       pinCodeController.text !=
                            //           widget.code) {
                            //     context
                            //         .showErrorSnackBar("خطا فى الرمز");
                            //   } else {
                            //     context.read<OtpCubit>().verifyOtp(
                            //           context: context,
                            //           otpRequestModel: OtpRequestModel(
                            //             otp: pinCodeController.text,
                            //             // phone: widget.phone,
                            //           ),
                            //           token: widget.token,
                            //         );
                            //   }
                            // }set
                            context.navigateToAndRemoveAll(const DashpoardScreen());
                          },
                        );
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'إعادة إرسال الرمز',
                            style: ts12White600.copyWith(
                                color: cTextbtnColor,
                                decoration: TextDecoration.underline,
                                decorationColor: cTextbtnColor),
                          ),
                        ),
                        Countdown(
                          controller: controller,
                          seconds: 60,
                          build: (_, double time) => Text(
                            '00:${time.toStringAsFixed(0).padLeft(2, '0')} sec',
                            style:
                                TextStyle(fontSize: 14.sp, color: cWhiteColor),
                          ),
                          onFinished: () {
                            setState(() {
                              controller.isCompleted = true;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 120.h,
                    ),
                  const LocalizeWidget(),
                  ],
                ),
              ),
            ),
          
        
      ),
      ),
    );
  }
}

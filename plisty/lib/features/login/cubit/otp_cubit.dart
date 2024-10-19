import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/models/default_model.dart';
import '../data/models/otp_request_model.dart';
import '../data/repo/otp_repo.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit(this._otpRepo) : super(OtpInitial());

  final OtpRepo _otpRepo;

  Future<void> verifyOtp(
      {required OtpRequestModel otpRequestModel,
      required String token,
      required BuildContext context}) async {
    emit(VerifyOtpLoadingState());
    var result = await _otpRepo.verifyOtp(
      context: context,
      otpRequestModel: otpRequestModel,
      token: token,
    );

    result.fold((error) {
      emit(VerifyOtpErrorState(message: error.message));
    }, (model) {
      emit(VerifyOtpSuccessState(defaultModel: model));
    });
  }

  Future<void> resendOtp(
      {required String token, required BuildContext context}) async {
    emit(ResendOtpLoadingState());
    var result = await _otpRepo.resendOtp(
      token: token,
      context: context,
    );

    result.fold((error) {
      emit(ResendOtpErrorState(message: error.message));
    }, (model) {
      emit(ResendOtpSuccessState(defaultModel: model));
    });
  }
}

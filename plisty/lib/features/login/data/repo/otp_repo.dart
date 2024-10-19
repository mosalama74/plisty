import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/error/failure.dart';
import '../models/default_model.dart';
import '../models/otp_request_model.dart';

abstract class OtpRepo {
  Future<Either<Failure, DefaultModel>> verifyOtp(
      {required OtpRequestModel otpRequestModel,
      required String token,
      required BuildContext context});
  Future<Either<Failure, DefaultModel>> resendOtp(
      {required String token, required BuildContext context});
}

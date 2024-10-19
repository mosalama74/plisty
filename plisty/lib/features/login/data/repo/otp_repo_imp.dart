import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_const.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_helper/dio_helper.dart';
import '../models/default_model.dart';
import '../models/otp_request_model.dart';
import 'otp_repo.dart';

class OtpRepoImp implements OtpRepo {
  @override
  Future<Either<Failure, DefaultModel>> verifyOtp(
      {required OtpRequestModel otpRequestModel,
      required String token,
      required BuildContext context}) async {
    try {
      var response = await DioHelper.postData(
        token: token,
        url: AppConst.verifyOtp,
        data: otpRequestModel.toJson(),
      );

      return right(DefaultModel.fromJson(response.data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromResponse(e.response, context));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, DefaultModel>> resendOtp(
      {required String token, required BuildContext context}) async {
    try {
      var response = await DioHelper.getData(
        token: token,
        url: AppConst.resendOtpUrl,
      );
      return right(DefaultModel.fromJson(response.data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromResponse(e.response, context));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

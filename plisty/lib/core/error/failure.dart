import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String message;

  const Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceld');

      case DioExceptionType.connectionError:
        return ServerFailure('connection error');

      case DioExceptionType.unknown:
        if ((dioError.message ?? '').contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }

        return ServerFailure('Unexpected Error, Please try again!');

      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(
      Response<dynamic>? response, BuildContext? context,
      {bool fromLogin = false}) {
    if ((response?.statusCode) == 400 ||
        response?.statusCode == 401 ||
        response?.statusCode == 422 ||
        response?.statusCode == 403) {
      return ServerFailure(response?.data['data'] ?? '');
    } else if (response?.statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (response?.statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else if (response?.statusCode == 451) {
      // if (!fromLogin) {
      //   context!.read<AppSettingsManagerCubit>().goToLogin(context);
      // }
      return ServerFailure(response?.data['message'] ?? '');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}

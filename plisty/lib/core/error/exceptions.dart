import '../../core/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;
  final int? statusCode;
  ServerException({
    required this.errorMessageModel,
    required this.statusCode,
  });
}

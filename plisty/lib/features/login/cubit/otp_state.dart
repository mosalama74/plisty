part of 'otp_cubit.dart';

sealed class OtpState extends Equatable {
  const OtpState();

  @override
  List<Object> get props => [];
}

final class OtpInitial extends OtpState {}

final class VerifyOtpLoadingState extends OtpState {}

final class VerifyOtpSuccessState extends OtpState {
  final DefaultModel defaultModel;

  const VerifyOtpSuccessState({required this.defaultModel});
}

final class VerifyOtpErrorState extends OtpState {
  final String message;

  const VerifyOtpErrorState({required this.message});
}

final class ResendOtpLoadingState extends OtpState {}

final class ResendOtpSuccessState extends OtpState {
  final DefaultModel defaultModel;

  const ResendOtpSuccessState({required this.defaultModel});
}

final class ResendOtpErrorState extends OtpState {
  final String message;

  const ResendOtpErrorState({required this.message});
}

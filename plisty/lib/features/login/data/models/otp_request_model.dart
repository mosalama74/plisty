class OtpRequestModel {
  String? phone;
  String? otp;

  OtpRequestModel({this.phone, this.otp});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phone'] = phone;
    data['otp'] = otp;
    return data;
  }
}

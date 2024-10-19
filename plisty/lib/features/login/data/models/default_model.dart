class DefaultModel {
  String? statusMsg;
  int? statusCode;
// Can be a string (failure) or a UserData (success)

  DefaultModel({
    this.statusMsg,
    this.statusCode,
  });

  DefaultModel.fromJson(Map<String, dynamic> json) {
    statusMsg = json['status_msg'];
    statusCode = json['status_code'];
  }
}

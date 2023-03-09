class GetLoginOtp {
  String? status;
  String? message;
  int? otp;

  GetLoginOtp({this.status, this.message, this.otp});

  GetLoginOtp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] =status;
    data['message'] =message;
    data['otp'] =otp;
    return data;
  }
}

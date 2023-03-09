class VerifyOtpModel {
  String? status;
  String? token;
  String? message;
  Data? data;

  VerifyOtpModel({this.status, this.token, this.message, this.data});

  VerifyOtpModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] =status;
    data['token'] =token;
    data['message'] =message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? role;
  String? mccCode;
  String? address;
  String? city;
  String? taluka;
  String? village;
  String? uploadfile;
  String? phoneVerifiedAt;
  int? status;
  String? deviceType;
  String? bmcId;
  int? userId;
  int? adminId;
  String? subscribedDate;
  String? expiryDate;
  String? apiToken;
  String? deviceToken;
  String? otp;
  String? bankName;
  String? bankAccountNumber;
  String? branchName;
  String? ifsc;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Data(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.role,
      this.mccCode,
      this.address,
      this.city,
      this.taluka,
      this.village,
      this.uploadfile,
      this.phoneVerifiedAt,
      this.status,
      this.deviceType,
      this.bmcId,
      this.userId,
      this.adminId,
      this.subscribedDate,
      this.expiryDate,
      this.apiToken,
      this.deviceToken,
      this.otp,
      this.bankName,
      this.bankAccountNumber,
      this.branchName,
      this.ifsc,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    role = json['role'];
    mccCode = json['mcc_code'];
    address = json['address'];
    city = json['city'];
    taluka = json['taluka'];
    village = json['village'];
    uploadfile = json['uploadfile'];
    phoneVerifiedAt = json['phone_verified_at'];
    status = json['status'];
    deviceType = json['device_type'];
    bmcId = json['bmc_id'];
    userId = json['user_id'];
    adminId = json['admin_id'];
    subscribedDate = json['subscribed_date'];
    expiryDate = json['expiry_date'];
    apiToken = json['api_token'];
    deviceToken = json['device_token'];
    otp = json['otp'];
    bankName = json['bank_name'];
    bankAccountNumber = json['bank_account_number'];
    branchName = json['branch_name'];
    ifsc = json['ifsc'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['role'] = role;
    data['mcc_code'] = mccCode;
    data['address'] = address;
    data['city'] = city;
    data['taluka'] = taluka;
    data['village'] = village;
    data['uploadfile'] = uploadfile;
    data['phone_verified_at'] = phoneVerifiedAt;
    data['status'] = status;
    data['device_type'] = deviceType;
    data['bmc_id'] = bmcId;
    data['user_id'] = userId;
    data['admin_id'] = adminId;
    data['subscribed_date'] = subscribedDate;
    data['expiry_date'] = expiryDate;
    data['api_token'] = apiToken;
    data['device_token'] = deviceToken;
    data['otp'] = otp;
    data['bank_name'] = bankName;
    data['bank_account_number'] = bankAccountNumber;
    data['branch_name'] = branchName;
    data['ifsc'] = ifsc;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}
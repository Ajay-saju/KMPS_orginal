class MccDetailsModel {
  String? status;
  MccDetail? mccDetail;

  MccDetailsModel({this.status, this.mccDetail});

  MccDetailsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    mccDetail = json['mcc_detail'] != null
        ? MccDetail.fromJson(json['mcc_detail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (mccDetail != null) {
      data['mcc_detail'] = mccDetail!.toJson();
    }
    return data;
  }
}

class MccDetail {
  String? name;
  String? mccCode;
  String? address;
  String? expiryDate;
  String? mainClient;

  MccDetail(
      {this.name,
      this.mccCode,
      this.address,
      this.expiryDate,
      this.mainClient});

  MccDetail.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mccCode = json['mcc_code'];
    address = json['address'];
    expiryDate = json['expiry_date'];
    mainClient = json['main_client'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['mcc_code'] = mccCode;
    data['address'] = address;
    data['expiry_date'] = expiryDate;
    data['main_client'] = mainClient;
    return data;
  }
}
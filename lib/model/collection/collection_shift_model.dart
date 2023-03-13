class GetCollectionShift {
  String? status;
  String? collectionShiftTime;
  String? serverShiftTime;

  GetCollectionShift(
      {this.status, this.collectionShiftTime, this.serverShiftTime});

  GetCollectionShift.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    collectionShiftTime = json['collection_shift_time'];
    serverShiftTime = json['server_shift_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['collection_shift_time'] = collectionShiftTime;
    data['server_shift_time'] = serverShiftTime;
    return data;
  }
}

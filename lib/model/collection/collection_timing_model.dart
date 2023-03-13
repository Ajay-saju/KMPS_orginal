class CollectionTimnigModel {
  String? status;
  String? morningCollectionStartTime;
  String? morningCollectionEndTime;
  String? eveningCollectionStartTime;
  String? eveningCollectionEndTime;

  CollectionTimnigModel(
      {this.status,
      this.morningCollectionStartTime,
      this.morningCollectionEndTime,
      this.eveningCollectionStartTime,
      this.eveningCollectionEndTime});

  CollectionTimnigModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    morningCollectionStartTime = json['morning_collection_start_time'];
    morningCollectionEndTime = json['morning_collection_end_time'];
    eveningCollectionStartTime = json['evening_collection_start_time'];
    eveningCollectionEndTime = json['evening_collection_end_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] =status;
    data['morning_collection_start_time'] =morningCollectionStartTime;
    data['morning_collection_end_time'] =morningCollectionEndTime;
    data['evening_collection_start_time'] =eveningCollectionStartTime;
    data['evening_collection_end_time'] =eveningCollectionEndTime;
    return data;
  }
}
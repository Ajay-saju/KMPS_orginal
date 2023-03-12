class CollectionListModel {
  String? status;
  List<Collection>? collection;
  String? totalqty;
  int? totalamount;

  CollectionListModel(
      {this.status, this.collection, this.totalqty, this.totalamount});

  CollectionListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['collection'] != null) {
      collection = <Collection>[];
      json['collection'].forEach((v) {
        collection!.add(Collection.fromJson(v));
      });
    }
    totalqty = json['totalqty'];
    totalamount = json['totalamount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (collection != null) {
      data['collection'] = collection!.map((v) => v.toJson()).toList();
    }
    data['totalqty'] = totalqty;
    data['totalamount'] = totalamount;
    return data;
  }
}

class Collection {
  int? memberid;
  String? memberCode;
  String? memberName;
  List<MemberData>? memberData;

  Collection(
      {this.memberid, this.memberCode, this.memberName, this.memberData});

  Collection.fromJson(Map<String, dynamic> json) {
    memberid = json['memberid'];
    memberCode = json['member_code'];
    memberName = json['member_name'];
    if (json['member_data'] != null) {
      memberData = <MemberData>[];
      json['member_data'].forEach((v) {
        memberData!.add(MemberData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['memberid'] = memberid;
    data['member_code'] = memberCode;
    data['member_name'] = memberName;
    if (memberData != null) {
      data['member_data'] = memberData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MemberData {
  double? fat;
  double? snf;
  String? milkType;
  int? qty;
  int? totalAmount;

  MemberData({this.fat, this.snf, this.milkType, this.qty, this.totalAmount});

  MemberData.fromJson(Map<String, dynamic> json) {
    fat = json['fat'];
    snf = json['snf'];
    milkType = json['milk_type'];
    qty = json['qty'];
    totalAmount = json['total_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fat'] = fat;
    data['snf'] = snf;
    data['milk_type'] = milkType;
    data['qty'] = qty;
    data['total_amount'] = totalAmount;
    return data;
  }
}
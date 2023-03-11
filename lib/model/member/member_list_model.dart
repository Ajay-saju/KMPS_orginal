class MemberListModel {
  String? status;
  List<Member>? member;

  MemberListModel({this.status, this.member});

  MemberListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['member'] != null) {
      member = <Member>[];
      json['member'].forEach((v) {
        member!.add(Member.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (member != null) {
      data['member'] = member!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Member {
  String? memberName;
  String? memberPhone;
  String? memberCode;
  String? address;
  String? birthDate;
  int? memberId;

  Member(
      {this.memberName,
      this.memberPhone,
      this.memberCode,
      this.address,
      this.birthDate,
      this.memberId});

  Member.fromJson(Map<String, dynamic> json) {
    memberName = json['member_name'];
    memberPhone = json['member_phone'];
    memberCode = json['member_code'];
    address = json['address'];
    birthDate = json['birth_date'];
    memberId = json['member_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['member_name'] = memberName;
    data['member_phone'] = memberPhone;
    data['member_code'] = memberCode;
    data['address'] = address;
    data['birth_date'] = birthDate;
    data['member_id'] = memberId;
    return data;
  }
}
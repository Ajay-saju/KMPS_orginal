class DashbordDetailsModel {
  String? status;
  int? totalMember;
  int? totalPoured;
  int? pendingMembers;
  int? totalQty;
  int? noSample;
  int? averageFat;
  int? averageSnf;

  DashbordDetailsModel(
      {this.status,
      this.totalMember,
      this.totalPoured,
      this.pendingMembers,
      this.totalQty,
      this.noSample,
      this.averageFat,
      this.averageSnf});

  DashbordDetailsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalMember = json['total_member'];
    totalPoured = json['total_poured'];
    pendingMembers = json['pending_members'];
    totalQty = json['total_qty'];
    noSample = json['no_sample'];
    averageFat = json['average_fat'];
    averageSnf = json['average_snf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['total_member'] = totalMember;
    data['total_poured'] = totalPoured;
    data['pending_members'] = pendingMembers;
    data['total_qty'] = totalQty;
    data['no_sample'] = noSample;
    data['average_fat'] = averageFat;
    data['average_snf'] = averageSnf;
    return data;
  }
}
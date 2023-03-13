class MilkRate {
  double? rate;

  MilkRate({this.rate});

  MilkRate.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rate'] = rate;
    return data;
  }
}


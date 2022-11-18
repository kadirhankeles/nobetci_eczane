class EczaneList {
  bool? success;
  List<Result>? result;

  EczaneList({this.success, this.result});

  EczaneList.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String? name;
  String? dist;
  String? address;
  String? phone;
  String? loc;

  Result({this.name, this.dist, this.address, this.phone, this.loc});

  Result.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    dist = json['dist'];
    address = json['address'];
    phone = json['phone'];
    loc = json['loc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['dist'] = this.dist;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['loc'] = this.loc;
    return data;
  }
}

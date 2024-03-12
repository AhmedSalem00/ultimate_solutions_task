class DeliveryStatusTypesModel {
  Data? data;
  Result? result;

  DeliveryStatusTypesModel({this.data, this.result});

  DeliveryStatusTypesModel.fromJson(Map<String, dynamic> json) {
    data = json['Data'] != null ? Data.fromJson(json['Data']) : null;
    result =
    json['Result'] != null ? Result.fromJson(json['Result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    if (this.result != null) {
      data['Result'] = this.result!.toJson();
    }
    return data;
  }
}

class Data {
  List<DeliveryStatusTypes>? deliveryStatusTypes;

  Data({this.deliveryStatusTypes});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['DeliveryStatusTypes'] != null) {
      deliveryStatusTypes = <DeliveryStatusTypes>[];
      json['DeliveryStatusTypes'].forEach((v) {
        deliveryStatusTypes!.add(DeliveryStatusTypes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.deliveryStatusTypes != null) {
      data['DeliveryStatusTypes'] =
          this.deliveryStatusTypes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DeliveryStatusTypes {
  String? tYPNM;
  String? tYPNO;

  DeliveryStatusTypes({this.tYPNM, this.tYPNO});

  DeliveryStatusTypes.fromJson(Map<String, dynamic> json) {
    tYPNM = json['TYP_NM'];
    tYPNO = json['TYP_NO'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TYP_NM'] = this.tYPNM;
    data['TYP_NO'] = this.tYPNO;
    return data;
  }
}

class Result {
  String? errMsg;
  int? errNo;

  Result({this.errMsg, this.errNo});

  Result.fromJson(Map<String, dynamic> json) {
    errMsg = json['ErrMsg'];
    errNo = json['ErrNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ErrMsg'] = this.errMsg;
    data['ErrNo'] = this.errNo;
    return data;
  }
}
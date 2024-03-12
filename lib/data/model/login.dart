
class DeliveryLogin {
  String? deliveryName;

  DeliveryLogin({this.deliveryName});

  DeliveryLogin.fromJson(Map<String, dynamic> json) {
    deliveryName = json['DeliveryName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DeliveryName'] = this.deliveryName;
    return data;
  }
}


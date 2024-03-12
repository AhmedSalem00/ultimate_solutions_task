import 'dart:convert';

import 'package:dio/dio.dart'as dioPackage;
import 'package:get/get.dart';
import 'package:ultimate_solutions_task/data/model/delivary.dart';
import 'package:ultimate_solutions_task/utils/constant.dart';

class LoginController extends GetxController

    with StateMixin<List<DeliveryBills>> {

  @override
  void onInit() {
    super.onInit();
    getData();
  }
  final dioPackage.Dio _dio = dioPackage.Dio();


  getData() async {
    change([], status: RxStatus.loading());
    try {
      var data = json.encode({
        "Value": {
          "P_LANG_NO": "1",
          "P_DLVRY_NO": "1010",
          "P_PSSWRD": "1"
        }
      });
      dioPackage.Response response = await _dio.post(
        '${AppConstants.BASE_URL}/CheckDeliveryLogin',
        data: data,
      );
      if (response.statusCode == 200) {
        print(response.data);
        var responseData = response.data['Data'];
        print(responseData.toString());

        List<DeliveryBills> delivaryBils = [];
        responseData.forEach((item) {
          delivaryBils.add(DeliveryBills.fromJson(item));
        });
        if (delivaryBils.isNotEmpty) {
          change(delivaryBils, status: RxStatus.success());
        }
        else {
          change([], status: RxStatus.empty());
        }
      }
    }
    on Exception catch (err) {
      change([], status: RxStatus.error(err.toString()));
    }
  }
}



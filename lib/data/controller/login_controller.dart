import 'dart:convert';

import 'package:dio/dio.dart'as dioPackage;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultimate_solutions_task/data/model/delivary.dart';
import 'package:ultimate_solutions_task/data/model/login.dart';
import 'package:ultimate_solutions_task/screens/presntaion/order/order_screen.dart';
import 'package:ultimate_solutions_task/utils/constant.dart';

class LoginController extends GetxController

    with StateMixin<List<DeliveryBills>> {


  final dioPackage.Dio _dio = dioPackage.Dio();
  DeliveryLogin delivaryLogin=  DeliveryLogin();
  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  getData() async {
    change([], status: RxStatus.loading());
    try {
      var data = json.encode({
        "Value": {
          "P_LANG_NO": "1",
          "P_DLVRY_NO": userIdController.text,
          "P_PSSWRD": passwordController.text
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

        delivaryLogin=DeliveryLogin.fromJson(responseData);
        Get.offAll(OrderScreen());
        print(responseData);

        return delivaryLogin;
      }
    }
    on Exception catch (err) {
      change([], status: RxStatus.error(err.toString()));
    }
  }
}




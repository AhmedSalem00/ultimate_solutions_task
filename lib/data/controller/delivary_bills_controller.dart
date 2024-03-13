import 'dart:convert';

import 'package:dio/dio.dart'as dioPackage;
import 'package:get/get.dart';
import 'package:ultimate_solutions_task/data/model/delivary.dart';
import 'package:ultimate_solutions_task/utils/constant.dart';

class DelivaryBillsController extends GetxController

    with StateMixin<List<DeliveryBills>> {
  final dioPackage.Dio _dio = dioPackage.Dio();

  List<DeliveryBills> lst = [];
  List<DeliveryBills> others = [];
  getData() async {
    change([], status: RxStatus.loading());
    try {
      var data = json.encode({
        "Value": {
          "P_DLVRY_NO": "1010",
          "P_LANG_NO": "1",
          "P_BILL_SRL": "",
          "P_PRCSSD_FLG": ""
        }
      });
      dioPackage.Response response = await _dio.post(
        '${AppConstants.BASE_URL}/GetDeliveryBillsItems',
        data: data,
      );
      if (response.statusCode == 200) {
        print(response.data);
        var responseData = response.data['Data']['DeliveryBills'];
        print(responseData.toString());

        List<DeliveryBills> delivaryBils = [];
        responseData.forEach((item) {
          delivaryBils.add(DeliveryBills.fromJson(item));

        });

        // delivaryBils[0].dLVRYSTATUSFLG
        if (delivaryBils.isNotEmpty) {
          change(delivaryBils, status: RxStatus.success());
          // delivaryBils.forEach((element) {
          //   if(element.dLVRYSTATUSFLG == "0"){
          //     lst.add(element);
          //   }else{
          //     others.add(element);
          //   }
          // });
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



import 'dart:convert';
import 'package:dio/dio.dart'as dioPackage;
import 'package:get/get.dart';
import 'package:ultimate_solutions_task/data/model/status_types.dart';
import 'package:ultimate_solutions_task/utils/constant.dart';

class DeliveryBillsController extends GetxController

    with StateMixin<List<DeliveryStatusTypes>> {

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
          "P_DLVRY_NO": "1010",
          "P_LANG_NO": "1",
          "P_BILL_SRL": "",
          "P_PRCSSD_FLG": ""
        }
      });

      dioPackage.Response response = await _dio.post(
        '${AppConstants.BASE_URL}/GetDeliveryStatusTypes',
        data: data,
      );
      if (response.statusCode == 200) {
        print(response.data);
        var responseData = response.data['Data']['DeliveryStatusTypes'];
        print(responseData.toString());

        List<DeliveryStatusTypes> delivary = [];
        responseData.forEach((item) {
          delivary.add(DeliveryStatusTypes.fromJson(item));
        });
        if (delivary.isNotEmpty) {
          change(delivary, status: RxStatus.success());
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



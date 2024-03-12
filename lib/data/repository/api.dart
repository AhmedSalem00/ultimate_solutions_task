import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:ultimate_solutions_task/data/model/delivary.dart';
import 'package:ultimate_solutions_task/data/model/login.dart';
import 'package:ultimate_solutions_task/data/model/status_types.dart';
import 'package:ultimate_solutions_task/utils/constant.dart';

class ApiService {
  final Dio _dio = Dio();

  List<DeliveryStatusTypes> delivary = [];
  List<DeliveryBills> delivaryBils = [];
  DeliveryLogin delivaryLogin=  DeliveryLogin();

  // Future<List<DeliveryStatusTypes>> getDeliveryStatusTypes() async {
  //   try {
  //     var data = json.encode({
  //       "Value": {
  //         "P_DLVRY_NO": "1010",
  //         "P_LANG_NO": "1",
  //         "P_BILL_SRL": "",
  //         "P_PRCSSD_FLG": ""
  //       }
  //     });
  //     Response response = await _dio.post(
  //       '${AppConstants.BASE_URL}/GetDeliveryStatusTypes',
  //       data: data,
  //     );
  //     if (response.statusCode == 200) {
  //       print(response.data);
  //       var responseData = response.data['Data']['DeliveryStatusTypes'];
  //       print(responseData.toString());
  //
  //       responseData.forEach(
  //           (item) => delivary.add(DeliveryStatusTypes.fromJson(item)));
  //       print(delivary.length);
  //
  //       return delivary;
  //     } else {
  //       throw DioError(
  //         requestOptions: response.requestOptions,
  //         response: response,
  //       );
  //     }
  //   } catch (error) {
  //     print('Error in API request: $error');
  //     throw error;
  //   }
  // }
  // Future<List<DeliveryBills>> getDeliveryBillsItems(String? deliveryNo) async {
  //   try {
  //     var data = json.encode({
  //       "Value": {
  //         "P_DLVRY_NO": "1010",
  //         "P_LANG_NO": "1",
  //         "P_BILL_SRL": "",
  //         "P_PRCSSD_FLG": ""
  //       }
  //     });
  //     Response response = await _dio.post(
  //       '${AppConstants.BASE_URL}/GetDeliveryBillsItems',
  //       data: data,
  //     );
  //     if (response.statusCode == 200) {
  //       print(response.data);
  //       var responseData = response.data['Data']['DeliveryBills'];
  //       print(responseData.toString());
  //
  //       List<DeliveryBills> delivaryBils = [];
  //       responseData.forEach((item) {
  //         delivaryBils.add(DeliveryBills.fromJson(item));
  //       });
  //       print(delivaryBils.length);
  //
  //       return delivaryBils;
  //     } else {
  //       throw DioError(
  //         requestOptions: response.requestOptions,
  //         response: response,
  //       );
  //     }
  //   } catch (error) {
  //     print('Error in API request: $error');
  //     throw error;
  //   }
  // }
  Future<DeliveryLogin> checkDeliveryLogin() async {
    try {
      var data = json.encode({
        "Value": {
          "P_LANG_NO": "1",
          "P_DLVRY_NO": "1010",
          "P_PSSWRD": "1"
        }
      });
      Response response = await _dio.post(
        '${AppConstants.BASE_URL}/CheckDeliveryLogin',
        data: data,
      );
      if (response.statusCode == 200) {
        print(response.data);
        var responseData = response.data['Data'];
        print(responseData.toString());

        delivaryLogin=DeliveryLogin.fromJson(responseData);
        print(responseData);

        return delivaryLogin;
      } else {
        throw DioError(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
    } catch (error) {
      print('Error in API request: $error');
      throw error;
    }
  }

}

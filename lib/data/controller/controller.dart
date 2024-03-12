import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:ultimate_solutions_task/data/model/delivary.dart';
import 'package:ultimate_solutions_task/data/model/login.dart';
import 'package:ultimate_solutions_task/utils/constant.dart';

class LoginController extends GetxController {
  final Dio _dio = Dio();
  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var delivaryLogin = DeliveryLogin().obs;
  final RxList<DeliveryBills> deliveryBills = RxList<DeliveryBills>([]);
  final RxBool isLoading = RxBool(false);
  Future<void> checkDeliveryLogin() async {
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
        delivaryLogin.value = DeliveryLogin.fromJson(response.data['Data']);
      } else {
        print('Error: Status code ${response.statusCode}');
      }
    } catch (error) {
      print('Error in API request: $error');
      rethrow;
    }
  }

  Future<void> fetchDeliveryBills() async {
    try {
      isLoading.value = true; // Set loading state to true
      var data = json.encode({
        "Value": {
          "P_DLVRY_NO": "1010", // Replace with actual delivery number
          "P_LANG_NO": "1",
          "P_BILL_SRL": "",
          "P_PRCSSD_FLG": "",
        }
      });
      Response response = await _dio.post(
        '${AppConstants.BASE_URL}/GetDeliveryBillsItems',
        data: data,
      );
      if (response.statusCode == 200) {
        deliveryBills.value = List<DeliveryBills>.from(
          response.data['Data']['DeliveryBills'].map((item) => DeliveryBills.fromJson(item)),
        );
      } else {
        throw DioError( // Re-throw DioError with a message
          requestOptions: response.requestOptions,
          response: response,
          error: 'API request failed with status code: ${response.statusCode}',
        );
      }
    } catch (error) {
      print('Error fetching delivery bills: $error');
      rethrow; // Re-throw for potential error handling in UI
    } finally {
      isLoading.value = false; // Set loading state to false after request
    }
  }
}
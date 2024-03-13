import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:ultimate_solutions_task/data/model/login.dart';
import 'package:ultimate_solutions_task/utils/constant.dart';

class ApiService {
  final Dio _dio = Dio();

  DeliveryLogin delivaryLogin=  DeliveryLogin();
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
      }
      else {
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

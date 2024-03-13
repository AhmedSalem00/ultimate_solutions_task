import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultimate_solutions_task/data/controller/login_controller.dart';
import 'package:ultimate_solutions_task/data/model/login.dart';

class CustomAppBarOrderWidget extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  CustomAppBarOrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Stack(children: [
      Container(
        height: 120,
        color: Colors.red,
      ),
      Positioned(
        right: 0,
        child: Image.asset(
          'assets/images/ic_circlee.png',
          height: 150,
        ),
      ),
      Positioned(
        bottom: 0,
        right: 70,
        child: Image.asset('assets/images/deliveryman.png',
            width: 134, height: 108),
      ),
      Positioned(
        right: 20,
        top: 20,
        child: Image.asset(
          'assets/images/ic_languagee.png',
          color: Colors.white,
          width: 24,
          height: 24,
        ),
      ),
      Positioned(
        top: 20,
        child: Column(
          children:  [
            GetBuilder<LoginController>(
              builder: (loginController ) =>Text(
                loginController.delivaryLogin.deliveryName.toString().,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              )
            ),

          ],
        ),
      ),
    ]);
  }
}

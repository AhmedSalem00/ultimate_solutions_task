import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultimate_solutions_task/data/controller/login_controller.dart';
import 'package:ultimate_solutions_task/screens/widget/login/custom_app_bar_login.dart';
import 'package:ultimate_solutions_task/screens/widget/login/custom_text_filed_widget.dart';
import 'package:ultimate_solutions_task/screens/widget/login/title_login_widget.dart';

class LoginScreen extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBarLogin(),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 8, right: 8),
              child: Column(children: [
                const TitleLoginWidget(),
                const SizedBox(
                  height: 50,
                ),
                CustomTextFiled(
                  hintText: 'User ID',
                  textEditingController: _loginController.userIdController,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextFiled(
                  hintText: 'Password',
                  textEditingController: _loginController.passwordController,
                ),
                const SizedBox(
                  height: 20,
                ),
                GetBuilder<LoginController>(
                  builder: (loginController) => Container(
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF004F62)),
                    child: TextButton(
                        onPressed: () {
                          loginController.getData();
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                // const CustomButtonLoginWidget(),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/delivery.png',
                  width: 195,
                  height: 170,
                ),
              ],),
            ),

          ],
        ),
      ),
    );
  }
}

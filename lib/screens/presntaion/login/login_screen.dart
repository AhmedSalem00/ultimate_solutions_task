import 'package:flutter/material.dart';
import 'package:ultimate_solutions_task/screens/widget/login/custom_app_bar_login.dart';
import 'package:ultimate_solutions_task/screens/widget/login/custom_button_login.dart';
import 'package:ultimate_solutions_task/screens/widget/login/custom_text_filed_widget.dart';
import 'package:ultimate_solutions_task/screens/widget/login/title_login_widget.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBarLogin(),
              const SizedBox(
                height: 50,
              ),
              const TitleLoginWidget(),
              const SizedBox(
                height: 10,
              ),
              CustomTextFiled(
                textEditingController: userIdController,
                labelText: 'User ID',
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextFiled(
                  textEditingController: passwordController,
                  labelText: 'Password'),
              const SizedBox(
                height: 20,
              ),
              const CustomButtonLoginWidget(),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/delivery.png',
                width: 195,
                height: 170,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


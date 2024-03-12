import 'package:flutter/material.dart';

class CustomButtonLoginWidget extends StatelessWidget {
  const CustomButtonLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF004F62)),
      child: TextButton(
          onPressed: () {
          },
          child: const Text(
            "Log in",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}

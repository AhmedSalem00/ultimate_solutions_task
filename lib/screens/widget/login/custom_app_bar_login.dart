import 'package:flutter/material.dart';

class CustomAppBarLogin extends StatelessWidget {
  const CustomAppBarLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/OnxRestaurant_Logo.png',
          width: 170,
          height: 74,
        ),
        Expanded(
          child: Stack(
            children: [
              Image.asset(
                'assets/images/ic_circle.png',
              ),
              // Top Image
              Image.asset(
                'assets/images/ic_language.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

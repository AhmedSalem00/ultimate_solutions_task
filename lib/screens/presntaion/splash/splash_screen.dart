import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: const Color(0xFFE9FAFF),
              child: Image.asset('assets/images/OnxRestaurant_Logo.png'),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Image.asset('assets/images/Path 1.png'),
                  Image.asset('assets/images/Group 8.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}

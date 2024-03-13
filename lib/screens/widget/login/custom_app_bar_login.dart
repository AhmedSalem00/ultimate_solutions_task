import 'package:flutter/material.dart';

class CustomAppBarLogin extends StatelessWidget {
  const CustomAppBarLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 26),
          child: Image.asset(
            'assets/images/OnxRestaurant_Logo.png',
            width: 170,
            height: 74,
          ),
        ),
        Stack(
          children: [
            // Positioned(
            //   child: Image.asset(
            //     'assets/images/ic_circle.png',
            //   ),
            // ),
            Container(
              width: 121,
              height: 127,
              margin: EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(254),
                ),
              ),
            ),
            // Top Image

            Positioned(
              top: 35,
              right: 16,
              bottom: 0,
              child: Image.asset(
                width: 27.5,
                height: 27.5,
                'assets/images/ic_language.png',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

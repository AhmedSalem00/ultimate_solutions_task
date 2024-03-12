import 'package:flutter/material.dart';

class CustomTitleOrderWidget extends StatelessWidget {
  const CustomTitleOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.asset(
          'assets/images/ic_emptyorder.png',
          width: 224,
          height: 183,
        ),
        const SizedBox(height: 30),
        const Text(
          'No orders yet',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        const Text(
          "You don't have any orders in your history",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

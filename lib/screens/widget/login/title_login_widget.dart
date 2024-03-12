import 'package:flutter/material.dart';

class TitleLoginWidget extends StatelessWidget {
  const TitleLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Welcome Back!',
            style: TextStyle(
              color: Color(0xFF004F62),
              fontSize: 29.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Log back into your account',
            style: TextStyle(
              color: Color(0xFF004F62),
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

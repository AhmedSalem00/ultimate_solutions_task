import 'package:flutter/material.dart';
import 'package:ultimate_solutions_task/data/repository/api.dart';
import 'package:ultimate_solutions_task/screens/presntaion/login/login_screen.dart';
import 'package:ultimate_solutions_task/screens/presntaion/order/order_screen.dart';

void main() {
  ApiService().getDeliveryStatusTypes();
  ApiService().getDeliveryBillsItems('repository');
  ApiService().checkDeliveryLogin();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}



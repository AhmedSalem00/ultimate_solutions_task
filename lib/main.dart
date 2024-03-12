import 'package:flutter/material.dart';
import 'package:ultimate_solutions_task/data/repository/api.dart';
import 'package:ultimate_solutions_task/screens/presntaion/splash/splash_screen.dart';

void main() {
  // ApiService().getDeliveryStatusTypes();
  // ApiService().getDeliveryBillsItems('');
  ApiService().checkDeliveryLogin();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}



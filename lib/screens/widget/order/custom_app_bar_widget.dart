import 'package:flutter/material.dart';
import 'package:ultimate_solutions_task/data/model/delivary.dart';

class CustomAppBarOrderWidget extends StatelessWidget {
   const CustomAppBarOrderWidget({super.key,  });
  @override
  Widget build(BuildContext context) {
    final List<DeliveryBills> lst;

    return Stack(children: [
      Container(
        height: 120,
        color: Colors.red,
      ),
      Positioned(
        right: 0,
        child: Image.asset(
          'assets/images/ic_circlee.png',
          height: 150,
        ),
      ),
      Positioned(
        bottom: 0,
        right: 70,
        child: Image.asset('assets/images/deliveryman.png',
            width: 134, height: 108),
      ),
      Positioned(
        right: 20,
        top: 20,
        child: Image.asset(
          'assets/images/ic_languagee.png',
          color: Colors.white,
          width: 24,
          height: 24,
        ),
      ),
      Positioned(
        top: 20,
        child: Column(
          children:  const [
            Text(
           'Ahmed',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Text('Othman',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ],
        ),
      ),
    ]);
  }
}

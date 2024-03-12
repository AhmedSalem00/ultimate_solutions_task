import 'package:flutter/material.dart';
import 'package:ultimate_solutions_task/screens/widget/order/custom_app_bar_widget.dart';
import 'package:ultimate_solutions_task/screens/widget/order/custom_order_list_widget.dart';
import 'package:ultimate_solutions_task/screens/widget/order/custom_slide_switch_widget.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBarOrderWidget(),
              const SizedBox(height: 20),
              CustomSlideSwitch(),
              const SizedBox(height: 40),
              // const CustomTitleOrderWidget(),
              // const SizedBox(height: 20),
                CustomOrderListWidget (),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     const Text('#1569999'),
              //     IntrinsicHeight(
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Column(
              //             children: const [
              //               Text('Status'),
              //               Text('Delivering'),
              //             ],
              //           ),
              //           const VerticalDivider(
              //             thickness: 3,
              //           ),
              //           const SizedBox(
              //             width: 20,
              //           ),
              //           Column(
              //             children: const [
              //               Text('Total price'),
              //               Text('Price'),
              //             ],
              //           ),
              //           const VerticalDivider(width: 10),
              //           const SizedBox(
              //             width: 20,
              //           ),
              //           Column(
              //             children: const [
              //               Text('Date '),
              //               Text('1/1/2024'),
              //             ],
              //           ),
              //           const VerticalDivider(width: 10),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

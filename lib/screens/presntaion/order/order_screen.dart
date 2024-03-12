import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultimate_solutions_task/data/controller/delivary_bills_controller.dart';
import 'package:ultimate_solutions_task/screens/widget/order/custom_app_bar_widget.dart';
import 'package:ultimate_solutions_task/screens/widget/order/custom_order_list_widget.dart';
import 'package:ultimate_solutions_task/screens/widget/order/custom_slide_switch_widget.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({super.key});

  var controller = Get.put(DelivaryBillsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBarOrderWidget(),
              const SizedBox(height: 20),
              CustomSlideSwitch(),
              const SizedBox(height: 40),
              controller.obx((state) => CustomOrderListWidget(lst: state ?? []),
                  onEmpty: Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: context.height * 0.3),
                    child: const Center(child: Text("Data is Empty")),
                  ),
                  onError: (e) => Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: context.height * 0.3, horizontal: 20),
                    child: Center(
                      child: Text(
                        "$e",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onLoading: Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: context.height * 0.3),
                    child: const Center(child: CircularProgressIndicator()),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

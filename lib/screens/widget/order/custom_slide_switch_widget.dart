import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:ultimate_solutions_task/data/controller/delivary_bills_controller.dart';
import 'package:ultimate_solutions_task/screens/widget/order/custom_order_list_widget.dart';

class CustomSlideSwitch extends StatefulWidget {
  const CustomSlideSwitch({super.key});

  @override
  State<CustomSlideSwitch> createState() => _CustomSlideSwitchState();
}

class _CustomSlideSwitchState extends State<CustomSlideSwitch> {
  int switcherIndex1 = 0;
  int switcherIndex2 = 0;
  var controller = Get.put(DelivaryBillsController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideSwitcher(
          containerColor: const Color(0xFF004F62),
          onSelect: (int index) => setState(() {
            switcherIndex2 = index;
            print(index);
          }),
          containerHeight: 40,
          containerWight: 350,

          children: [
            Text(
              'New',
              style: TextStyle(
                fontWeight:
                    switcherIndex2 == 0 ? FontWeight.w500 : FontWeight.w400,
                color:
                    switcherIndex2 == 0 ? Colors.grey : const Color(0xFF004F62),
              ),
            ),
            Text(
              'Other',
              style: TextStyle(
                fontWeight:
                    switcherIndex2 == 1 ? FontWeight.w500 : FontWeight.w400,
                color: switcherIndex2 == 1
                    ? const Color(0xFF004F62)
                    : const Color(0xFF004F62),
              ),
            ),
          ],
        ),
        switcherIndex2 == 0
            ? controller.obx((state) {
                return CustomOrderListWidget(

                  lst: state ?? [],
                  type: 'new'

                );
              },
                onEmpty: Padding(
                  padding: EdgeInsets.symmetric(vertical: context.height * 0.3),
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
                  padding: EdgeInsets.symmetric(vertical: context.height * 0.3),
                  child: const Center(child: CircularProgressIndicator()),
                ))
            : controller.obx((state) {
          return CustomOrderListWidget(

            lst: state ?? [],
              type: 'others'

          );
        },
            onEmpty: Padding(
              padding: EdgeInsets.symmetric(vertical: context.height * 0.3),
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
              padding: EdgeInsets.symmetric(vertical: context.height * 0.3),
              child: const Center(child: CircularProgressIndicator()),
            ))
      ],
    );
  }
}

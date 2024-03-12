import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';

class CustomSlideSwitch extends StatefulWidget {
  CustomSlideSwitch({super.key});

  @override
  State<CustomSlideSwitch> createState() => _CustomSlideSwitchState();
}

class _CustomSlideSwitchState extends State<CustomSlideSwitch> {
  int switcherIndex1 = 0;

  int switcherIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return SlideSwitcher(
      containerColor: const Color(0xFF004F62),
      onSelect: (int index) => setState(() => switcherIndex2 = index),
      containerHeight: 40,
      containerWight: 350,
      children: [
        Text(
          'New',
          style: TextStyle(
            fontWeight: switcherIndex2 == 0 ? FontWeight.w500 : FontWeight.w400,
            color: switcherIndex2 == 0 ? Colors.grey : const Color(0xFF004F62),
          ),
        ),
        Text(
          'Other',
          style: TextStyle(
            fontWeight: switcherIndex2 == 1 ? FontWeight.w500 : FontWeight.w400,
            color: switcherIndex2 == 1
                ? const Color(0xFF004F62)
                : const Color(0xFF004F62),
          ),
        ),
      ],
    );
  }
}

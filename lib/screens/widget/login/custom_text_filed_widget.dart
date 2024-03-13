import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconButton? iconButton;
  final TextEditingController? textEditingController;
  final Function()? onTap;
  final String? Function(String?)? validatorFun;
  final String? initialValue;
  final bool obscureText;
    const CustomTextFiled(
      {super.key,
        this.hintText,
         this.labelText,
        this.iconButton,
        this.textEditingController,
        this.onTap,
        this.obscureText = false,
        this.validatorFun, this.initialValue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      obscureText:obscureText ,
      initialValue: initialValue,
      validator: validatorFun,
      onTap: onTap,
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: const Color(0xFFF1F5FB),
          suffixIcon: iconButton,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          )),
    );
  }
}

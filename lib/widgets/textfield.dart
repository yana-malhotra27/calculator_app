import 'package:flutter/material.dart';
import 'package:calculator_app/constant/colors.dart';

//using refractor on padding then extract widget and naming
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.controller
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: TextField(
        controller: controller, //text ko handle karne ke liye
        decoration: const InputDecoration(
            border: InputBorder.none,
            fillColor: AppColors.primaryColor,
            filled: true),
        style: TextStyle(fontSize: 50),
        readOnly:
            true, //want only numbers so no input we'll use buttons to type
        autofocus: true, //cursor
        showCursor: true,
      ),
    );
  }
}

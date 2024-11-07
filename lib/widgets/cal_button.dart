import 'package:calculator_app/constant/colors.dart';
import 'package:calculator_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => //seedha provider ko access karenge
          Provider.of<CalculatorProvider>(context, listen: false).setValue("="), //listening false cuz we are just calling the function
      child: Container(
        //extract with widget //agin extract with widget
        height: 160,
        width: 70,
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(40)),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
    );
  }
}

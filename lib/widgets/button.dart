import 'package:calculator_app/constant/colors.dart';
import 'package:calculator_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key, required this.label,this.textColor=Colors.white}); //constructor //if not required then specified a default value
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false).setValue(label),
      child: Material( //again wrap with widget
        //refractor wrap with widget
        elevation: 3, //buttons doesn't look merged with bg so elevated
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(42),
        child: CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.secondary2Color,
            child: Text(
              label,
              style:
                  TextStyle(
                    color: textColor, fontSize: 28, fontWeight: FontWeight.w600), //buttons
            )),
      ),
    );
  }
}

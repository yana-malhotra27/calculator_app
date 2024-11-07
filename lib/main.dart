import 'package:calculator_app/constant/colors.dart';
import 'package:calculator_app/provider/cal_provider.dart';
import 'package:calculator_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/widgets/textfield.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CalculatorApp()); //runapp helps to see on screen
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp( //wrap with widget
        theme: ThemeData.dark(), //dark theme
        //represnts complete app as a widget
        //placeholder-cross from placeholder
        home: const HomeScreen(),
      ),
    );
  }
}
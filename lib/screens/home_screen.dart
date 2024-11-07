import 'package:calculator_app/constant/colors.dart';
import 'package:calculator_app/provider/cal_provider.dart';
import 'package:calculator_app/widgets/cal_button.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/widgets/textfield.dart';
import 'package:calculator_app/screens/widgets_data.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    final decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(
            top:
                Radius.circular(30))); //top border radius making edges circular
    return Consumer<CalculatorProvider>(
        //listening is only done by consumer widget
        builder: (context, provider, _) {
      //with provider argument we can access above provider and can listen if any value changes
      return Scaffold(
        //wrap with builder
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
              "                      Calculator App                      "), //appbar title widget jismein text added
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            CustomTextField(
              controller: provider.compController,
            ),
            const Spacer(), //takes variables space to join widget till bottom
            Container(
              height: screenHeight * 0.6,
              width: double.infinity, //jitna available
              padding: padding,
              decoration: decoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, //space equal between buttons
                    children: List.generate(
                        4,
                        (index) => buttonList[
                            index]), //material ko refract karke stract with wideget then named it Button1
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment .spaceBetween, //space equal between buttons
                    children: List.generate(
                        4,
                        (index) => buttonList[index +4]), //material ko refract karke stract with wideget then named it Button1
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, //space equal between buttons
                    children: List.generate(
                        4,
                        (index) => buttonList[index +
                            8]), //material ko refract karke stract with wideget then named it Button1
                  ),
                  Row(
                    children: [
                      //refractor wrap with row
                      Expanded(
                        child: Column(
                          children: [
                            //wrap with widget
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween, //space equal between buttons
                              children: List.generate(
                                  3,
                                  (index) => buttonList[index +
                                      12]), //material ko refract karke stract with wideget then named it Button1
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween, //space equal between buttons
                              children: List.generate(
                                  3,
                                  (index) => buttonList[index +
                                      15]), //material ko refract karke stract with wideget then named it Button1
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CalculateButton()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}

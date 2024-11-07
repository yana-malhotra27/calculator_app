import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final compController = TextEditingController(); //handles textfield text

  setValue(String value) {
    String str = compController.text;
    switch (value) {
      case "C":
        compController.clear();
        break;
      case "AC":
        compController.text = str.substring(0, str.length - 1);
        break;
      case "X":
        compController.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        compController.text += value;
    }
    compController.selection = TextSelection.fromPosition(//cursor end pe aajaye
        TextPosition(offset: compController.text.length));
  }

  compute() {
    //uses function library and computes all expression
    String text = compController.text;
    compController.text = text
        .interpret()
        .toString(); //interpret cuz of fn tree it executes text as dart code //string dynamic value cuz int not directly store see
  }

  @override
  void dispose() {
    super.dispose();
    compController.dispose(); //good practice not disposing new window tho
  }
}

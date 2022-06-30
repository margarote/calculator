import 'package:flutter/material.dart';

import '../controller/calculator_controller.dart';
import '../usecases/add.dart';
import '../usecases/division.dart';
import '../usecases/get_size_text_button.dart';
import '../usecases/multiplication.dart';
import '../usecases/remove_last_caracter.dart';
import '../usecases/subtraction.dart';
import 'button_calculator_widget.dart';

class Buttons extends StatefulWidget {
  final CalculatorController calculatorController;
  const Buttons({Key? key, required this.calculatorController}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  late final GetSizeTextButton getSizeTextButton;
  late final RemoveLastCaracter removeLastCaracter;
  late final Add add;
  late final Subtraction subtraction;
  late final Multiplication multiplication;
  late final Division division;

  late List<double> result;
  late String operator;

  @override
  void initState() {
    result = [];
    operator = "AC";
    getSizeTextButton = GetSizeTextButton();
    removeLastCaracter = RemoveLastCaracter();
    add = Add();
    subtraction = Subtraction();
    multiplication = Multiplication();
    division = Division();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonCalculatorWidget(
              context: context,
              text: "+",
              isNumber: false,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                changeOperator("+");
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "-",
              isNumber: false,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                changeOperator("-");
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "x",
              isNumber: false,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                changeOperator("x");
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "÷",
              isNumber: false,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                changeOperator("÷");
              },
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonCalculatorWidget(
              context: context,
              text: "7",
              isNumber: true,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                setNumber("7");
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "8",
              isNumber: true,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                setNumber("8");
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "9",
              isNumber: true,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                setNumber("9");
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "4",
              isNumber: true,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                setNumber("4");
              },
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonCalculatorWidget(
              context: context,
              text: "5",
              isNumber: true,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                setNumber("5");
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "6",
              isNumber: true,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                setNumber("6");
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "1",
              isNumber: true,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                setNumber("1");
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "2",
              isNumber: true,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                setNumber("2");
              },
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonCalculatorWidget(
              context: context,
              text: "3",
              isNumber: true,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                setNumber("3");
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "0",
              isNumber: true,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                widget.calculatorController.onChange("${widget.calculatorController.textView}0");
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "<-",
              isNumber: false,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                operationRemoveLastCaracter();
              },
            ),
            buttonCalculatorWidget(
              context: context,
              text: "AC",
              isNumber: false,
              getSizeTextButton: getSizeTextButton,
              onTap: () {
                operationAC();
              },
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        buttonCalculatorWidget(
          context: context,
          text: "=",
          isNumber: false,
          sizeFull: true,
          getSizeTextButton: getSizeTextButton,
          onTap: () {
            operationIgual();
          },
        ),
      ],
    );
  }

  void setNumber(String number) {
    if (widget.calculatorController.textView.characters.first == "0") {
      widget.calculatorController.onChange("");
    }
    widget.calculatorController.onChange("${widget.calculatorController.textView}$number");
  }

  void operationIgual() {
    switch (operator) {
      case "AC":
        break;
      case "+":
        final resultado = add(result, widget.calculatorController.textView);
        result = [resultado];
        widget.calculatorController.onChange(resultado.toString());
        break;
      case "-":
        final resultado = subtraction(result, widget.calculatorController.textView);
        result = [resultado];
        widget.calculatorController.onChange(resultado.toString());
        break;
      case "x":
        final resultado = multiplication(result, widget.calculatorController.textView);
        result = [resultado];
        widget.calculatorController.onChange(resultado.toString());
        break;
      case "÷":
        final resultado = division(result, widget.calculatorController.textView);
        result = [resultado];
        widget.calculatorController.onChange(resultado.toString());
        break;
      case "=":
        break;
      default:
        break;
    }
  }

  void operationAC() {
    operator = "AC";
    result = [];
    widget.calculatorController.onChange("0");
  }

  void operationRemoveLastCaracter() {
    String newTextView = removeLastCaracter(widget.calculatorController.textView);
    widget.calculatorController.onChange(newTextView);
  }

  void changeOperator(String operator) {
    if (result.isNotEmpty) {
      widget.calculatorController.onChange("0");
    }
    this.operator = operator;
    result.add(double.tryParse(widget.calculatorController.textView) ?? 0);
    widget.calculatorController.onChange("0");
  }
}

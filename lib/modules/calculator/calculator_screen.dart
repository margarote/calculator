import 'package:calculator/modules/calculator/usecases/get_size_text_button.dart';
import 'package:flutter/material.dart';

import 'widgets/app_bar.dart';
import 'widgets/button_calculator_widget.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  late final GetSizeTextButton getSizeTextButton;

  late String textView;
  late List<double> result;
  late String operator;

  @override
  void initState() {
    textView = "0";
    result = [];
    operator = "AC";
    getSizeTextButton = GetSizeTextButton();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: appBar(),
        backgroundColor: Colors.white,
        body: SizedBox(
          width: width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 600,
                width: width * .75,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      width: width * .6,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        child: Text(
                          textView.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buttonCalculatorWidget(
                          context: context,
                          text: "+",
                          isNumber: false,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              if (result.isNotEmpty) {
                                textView = "0";
                              }
                              operator = "+";
                              result.add(double.tryParse(textView) ?? 0);
                              textView = "0";
                            });
                          },
                        ),
                        buttonCalculatorWidget(
                          context: context,
                          text: "-",
                          isNumber: false,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              if (result.isNotEmpty) {
                                textView = "0";
                              }
                              operator = "-";
                              result.add(double.tryParse(textView) ?? 0);
                              textView = "0";
                            });
                          },
                        ),
                        buttonCalculatorWidget(
                          context: context,
                          text: "x",
                          isNumber: false,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              if (result.isNotEmpty) {
                                textView = "0";
                              }
                              operator = "x";
                              result.add(double.tryParse(textView) ?? 0);
                              textView = "0";
                            });
                          },
                        ),
                        buttonCalculatorWidget(
                          context: context,
                          text: "÷",
                          isNumber: false,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              if (result.isNotEmpty) {
                                textView = "0";
                              }
                              operator = "÷";
                              result.add(double.tryParse(textView) ?? 0);
                              textView = "0";
                            });
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
                            setState(() {
                              if (textView.characters.first == "0") {
                                textView = "";
                              }
                              textView = "${textView}7";
                            });
                          },
                        ),
                        buttonCalculatorWidget(
                          context: context,
                          text: "8",
                          isNumber: true,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              if (textView.characters.first == "0") {
                                textView = "";
                              }
                              textView = "${textView}8";
                            });
                          },
                        ),
                        buttonCalculatorWidget(
                          context: context,
                          text: "9",
                          isNumber: true,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              if (textView.characters.first == "0") {
                                textView = "";
                              }
                              textView = "${textView}9";
                            });
                          },
                        ),
                        buttonCalculatorWidget(
                          context: context,
                          text: "4",
                          isNumber: true,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              if (textView.characters.first == "0") {
                                textView = "";
                              }
                              textView = "${textView}4";
                            });
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
                            setState(() {
                              if (textView.characters.first == "0") {
                                textView = "";
                              }
                              textView = "${textView}5";
                            });
                          },
                        ),
                        buttonCalculatorWidget(
                          context: context,
                          text: "6",
                          isNumber: true,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              if (textView.characters.first == "0") {
                                textView = "";
                              }
                              textView = "${textView}6";
                            });
                          },
                        ),
                        buttonCalculatorWidget(
                          context: context,
                          text: "1",
                          isNumber: true,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              if (textView.characters.first == "0") {
                                textView = "";
                              }
                              textView = "${textView}1";
                            });
                          },
                        ),
                        buttonCalculatorWidget(
                          context: context,
                          text: "2",
                          isNumber: true,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              if (textView.characters.first == "0") {
                                textView = "";
                              }
                              textView = "${textView}2";
                            });
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
                            setState(() {
                              if (textView.characters.first == "0") {
                                textView = "";
                              }
                              textView = "${textView}3";
                            });
                          },
                        ),
                        buttonCalculatorWidget(
                          context: context,
                          text: "0",
                          isNumber: true,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              textView = "${textView}0";
                            });
                          },
                        ),
                        buttonCalculatorWidget(
                            context: context,
                            text: "<-",
                            isNumber: false,
                            getSizeTextButton: getSizeTextButton,
                            onTap: () {
                              setState(() {
                                int indexFinal = textView.length;
                                textView = textView.substring(0, indexFinal - 1);
                              });
                            }),
                        buttonCalculatorWidget(
                          context: context,
                          text: "AC",
                          isNumber: false,
                          getSizeTextButton: getSizeTextButton,
                          onTap: () {
                            setState(() {
                              operator = "AC";
                              result = [];
                              textView = "0";
                            });
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
                          switch (operator) {
                            case "AC":
                              break;
                            case "+":
                              setState(() {
                                result.removeWhere((element) => element == 0);
                                result.add(double.tryParse(textView) ?? 0);
                                double resultado = result.reduce((value, element) => value + element);
                                result = [resultado];
                                textView = resultado.toString();
                              });
                              break;
                            case "-":
                              setState(() {
                                result.removeWhere((element) => element == 0);
                                result.add(double.tryParse(textView) ?? 0);
                                double resultado = result.reduce((value, element) => value - element);
                                result = [resultado];
                                textView = resultado.toString();
                              });
                              break;
                            case "x":
                              setState(() {
                                result.removeWhere((element) => element == 0);
                                result.add(double.tryParse(textView) ?? 0);
                                double resultado = result.reduce((value, element) => value * element);
                                result = [resultado];
                                textView = resultado.toString();
                              });
                              break;
                            case "÷":
                              setState(() {
                                result.removeWhere((element) => element == 0);
                                result.add(double.tryParse(textView) ?? 0);
                                double resultado = result.reduce((value, element) => value / element);
                                result = [resultado];
                                textView = resultado.toString();
                              });
                              break;
                            case "=":
                              break;
                            default:
                              break;
                          }
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

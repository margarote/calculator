import 'package:flutter/material.dart';

import 'controller/calculator_controller.dart';
import 'state/calculator_state.dart';
import 'widgets/app_bar.dart';
import 'widgets/buttons.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  late final CalculatorController calculatorController;

  @override
  void initState() {
    calculatorController = CalculatorController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heightFull = MediaQuery.of(context).size.height;
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: appBar(),
        backgroundColor: Colors.white,
        body: SizedBox(
          width: width,
          height: heightFull,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: heightFull * .2,
                ),
                _textView,
                Container(
                  height: 600,
                  width: 360,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Buttons(
                        calculatorController: calculatorController,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get _textView {
    return SizedBox(
      width: 360,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        child: ValueListenableBuilder<CalculatorState>(
            valueListenable: calculatorController,
            builder: (context, state, child) {
              final text = (state as ChangeCalculatorState).textView;
              return Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
                textAlign: TextAlign.right,
              );
            }),
      ),
    );
  }
}

import '../state/calculator_state.dart';
import 'package:flutter/material.dart';

class CalculatorController extends ValueNotifier<CalculatorState> {
  CalculatorController() : super(ChangeCalculatorState("0"));

  String get textView => (value as ChangeCalculatorState).textView;

  void onChange(String newText) {
    value = ChangeCalculatorState(newText);
  }
}

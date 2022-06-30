abstract class CalculatorState {}

class ChangeCalculatorState extends CalculatorState {
  final String textView;

  ChangeCalculatorState(this.textView);
}

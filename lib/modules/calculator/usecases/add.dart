class Add {
  double call(List<double> items, String textView) {
    items.removeWhere((element) => element == 0);
    items.add(double.tryParse(textView) ?? 0);
    return items.reduce((value, element) => value + element);
  }
}

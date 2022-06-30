class RemoveLastCaracter {
  String call(String textView) {
    int indexFinal = textView.length;
    return textView.substring(0, indexFinal - 1);
  }
}

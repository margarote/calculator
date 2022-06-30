import '../usecases/get_size_text_button.dart';
import 'package:flutter/material.dart';

Widget buttonCalculatorWidget({
  required BuildContext context,
  bool isNumber = false,
  required String text,
  required GetSizeTextButton getSizeTextButton,
  VoidCallback? onTap,
  bool sizeFull = false,
}) {
  double sizeButton = 80;
  return Padding(
    padding: const EdgeInsets.all(3.8),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        width: sizeFull ? 360 : sizeButton,
        height: sizeFull ? 60 : sizeButton,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isNumber ? Colors.black87 : Colors.grey[300],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isNumber ? Colors.white : Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: getSizeTextButton(context),
            ),
          ),
        ),
      ),
    ),
  );
}

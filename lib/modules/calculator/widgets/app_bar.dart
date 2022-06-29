import 'package:flutter/material.dart';

PreferredSizeWidget appBar() {
  return AppBar(
    backgroundColor: Colors.black87,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.calculate),
        SizedBox(
          width: 3,
        ),
        Text(
          "Calculator",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    centerTitle: true,
  );
}

import 'package:flutter/material.dart';

class GetSizeTextButton {
  double call(BuildContext context) {
    double screenFullWidth = MediaQuery.of(context).size.width;

    if (screenFullWidth <= 350) {
      return 25;
    } else if (screenFullWidth <= 450) {
      return 28;
    } else if (screenFullWidth <= 1300) {
      return 32;
    }
    return 11;
  }
}

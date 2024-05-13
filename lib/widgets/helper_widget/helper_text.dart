import 'package:flutter/material.dart';

class HelperText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontsize;
  final bool isfontWeightBold;
  HelperText(
      {super.key,
      this.fontsize = 20,
      this.isfontWeightBold = false,
      this.textColor = Colors.black,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: textColor,
          fontSize: fontsize,
          fontWeight: isfontWeightBold ? FontWeight.bold : FontWeight.normal),
    );
  }
}

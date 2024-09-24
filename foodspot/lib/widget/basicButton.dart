import 'package:flutter/material.dart';

class Basicbutton extends StatelessWidget {
  const Basicbutton(
      {super.key,
      required this.function,
      required this.fontColor,
      required this.fontSize,
      required this.bColor,
      required this.width,
      required this.lable});
  final String lable;
  final Function() function;
  final Color fontColor;
  final double fontSize;
  final Color bColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(bColor),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
      child: Text(
        lable,
        style: TextStyle(color: fontColor),
      ),
    );
  }
}

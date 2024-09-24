import 'package:flutter/material.dart';

class BasicText extends StatelessWidget {
  const BasicText(
      {super.key,
      required this.lable,
      required this.size,
      required this.weight});
  final String lable;
  final double size;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      lable,
      style: TextStyle(
          fontSize: size, fontWeight: weight, fontFamily: "RobotoMono"),
    );
  }
}

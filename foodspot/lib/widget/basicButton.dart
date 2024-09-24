import 'package:flutter/material.dart';

class Basicbutton extends StatelessWidget {
  const Basicbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child: Text("Sign / Login"));
  }
}
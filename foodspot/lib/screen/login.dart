import 'package:flutter/material.dart';
import 'package:foodspot/widget/basicButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(children: [Text("FoodSpot"),Basicbutton()],);
  }
}
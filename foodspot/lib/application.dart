import 'package:flutter/material.dart';
import 'package:foodspot/screen/login.dart';
import 'package:foodspot/screen/stratup.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: Stratup()
    );
  }
}
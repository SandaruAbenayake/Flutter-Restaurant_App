import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodspot/widget/basicButton.dart';
import 'package:foodspot/widget/basicText.dart';
import 'package:foodspot/widget/basicTextFiled.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future _login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _usernameController.text.trim(),
        password: _passwordController.text.trim());
    if (_formKey.currentState!.validate()) {
      // Perform login action
      String username = _usernameController.text;
      String password = _passwordController.text;
      print('Username: $username, Password: $password');
      // Navigate to another screen or show a message
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "FoodSpot",
              style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontWeight: FontWeight.w600,
                  fontSize: 40),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: const Color.fromARGB(255, 236, 236, 236),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const BasicText(
                    lable: "Login", size: 25, weight: FontWeight.w500),
                const SizedBox(
                  height: 25,
                ),
                const BasicText(
                    lable: "Username", size: 15, weight: FontWeight.w300),
                BasicTextFiled(
                    hint: "Enter your email",
                    controller: _usernameController,
                    isPasswordFiled: false),
                const BasicText(
                    lable: "Password", size: 15, weight: FontWeight.w300),
                BasicTextFiled(
                    hint: "*****",
                    controller: _usernameController,
                    isPasswordFiled: true),
                Basicbutton(
                  function: () {},
                  fontColor: Colors.white,
                  fontSize: 20,
                  bColor: Colors.black,
                  width: 50,
                  lable: 'LOGIN',
                ),
                const SizedBox(
                  height: 10,
                ),
                Basicbutton(
                  function: () {},
                  fontColor: Colors.black,
                  fontSize: 20,
                  bColor: Colors.white,
                  width: 0,
                  lable: 'NEW IN FOODSPOT',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

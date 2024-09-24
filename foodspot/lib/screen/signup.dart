import 'package:flutter/material.dart';
import 'package:foodspot/widget/basicButton.dart';
import 'package:foodspot/widget/basicText.dart';
import 'package:foodspot/widget/basicTextFiled.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 251, 241),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BasicText(
                lable: "Create Account", size: 25, weight: FontWeight.w500),
            const SizedBox(
              height: 25,
            ),
            const BasicText(lable: "Name", size: 15, weight: FontWeight.w300),
            BasicTextFiled(
              hint: "Sandaru",
              controller: nameController,
              isPasswordFiled: false,
            ),
            const BasicText(lable: "Email", size: 15, weight: FontWeight.w300),
            BasicTextFiled(
              hint: "example@gmail.com",
              controller: emailController,
              isPasswordFiled: false,
            ),
            const BasicText(
                lable: "Password", size: 15, weight: FontWeight.w300),
            BasicTextFiled(
              hint: "****",
              controller: passwordController,
              isPasswordFiled: true,
            ),
            const BasicText(
                lable: "Confirm Password", size: 15, weight: FontWeight.w300),
            BasicTextFiled(
              hint: "****",
              controller: confirmPasswordController,
              isPasswordFiled: true,
            ),
            Basicbutton(
              function: () {},
              fontColor: Colors.white,
              fontSize: 20,
              bColor: Colors.black,
              width: 50,
              lable: 'CREATE ACCOUNT',
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
              lable: 'HAVE AN ACCOUNT',
            )
          ],
        ),
      ),
    );
  }
}

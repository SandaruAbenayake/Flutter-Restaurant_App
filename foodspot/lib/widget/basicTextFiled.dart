import 'package:flutter/material.dart';

class BasicTextFiled extends StatefulWidget {
  const BasicTextFiled(
      {super.key,
      required this.hint,
      required this.controller,
      required this.isPasswordFiled});
  final String hint;
  final TextEditingController controller;
  final bool isPasswordFiled;

  @override
  State<BasicTextFiled> createState() => _BasicTextFiledState();
}

class _BasicTextFiledState extends State<BasicTextFiled> {
  bool isShowPassword = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          obscureText: isShowPassword,
          decoration: InputDecoration(
              suffixIcon: widget.isPasswordFiled
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      icon: isShowPassword
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined))
                  : null,
              border: const OutlineInputBorder(),
              hintText: widget.hint,
              hintStyle:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
        ),
        const SizedBox(
          height: 25,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.label,
      required this.isPassWord});
  final String hintText, label;
  final bool isPassWord;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassWord,
      decoration: InputDecoration(
          hintText: hintText,
          label: Text(label),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.grey));
  }
}

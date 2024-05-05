import 'package:flutter/material.dart';

class CustomFormTextField extends StatefulWidget {
  const CustomFormTextField(
      {super.key,
      required this.hintText,
      required this.label,
      required this.isPassWord,
      required this.onChange});
  final String hintText, label;
  final bool isPassWord;
  final void Function(String) onChange;

  @override
  State<CustomFormTextField> createState() => _CustomFormTextFieldState();
}

class _CustomFormTextFieldState extends State<CustomFormTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This Field is required';
        }
      },
      onChanged: widget.onChange,
      obscureText: widget.isPassWord,
      decoration: InputDecoration(
          hintText: widget.hintText,
          label: Text(widget.label),
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

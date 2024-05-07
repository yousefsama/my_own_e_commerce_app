import 'package:flutter/material.dart';

class CustomTextAndArrow extends StatelessWidget {
  const CustomTextAndArrow({
    super.key,
    required this.text,
    required this.icon,
    required this.textStyle,
  });
  final String text;
  final Widget icon;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: textStyle,
        ),
        const SizedBox(width: 5),
        IconButton(
          onPressed: () {},
          icon: icon,
          color: const Color(0xffF26F3F),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/constance.dart';

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
          color: Constance.orangeColor,
        ),
      ],
    );
  }
}

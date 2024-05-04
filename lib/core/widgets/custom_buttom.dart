import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.title,
    required this.color,
    required this.borderRadius,
    required this.textcolor,
    required this.onTap,
  });
  final String title;
  final Color color, textcolor;
  final BorderRadiusGeometry borderRadius;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: color, borderRadius: borderRadius),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            title,
            style: TextStyle(color: textcolor, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

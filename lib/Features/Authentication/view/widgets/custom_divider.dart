import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: Divider(height: 60, color: Colors.grey)),
        Text(
          text,
          style: const TextStyle(color: Colors.grey),
        ),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}

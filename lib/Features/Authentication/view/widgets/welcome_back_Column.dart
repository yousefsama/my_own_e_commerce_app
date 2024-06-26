// ignore_for_file: file_names

import 'package:flutter/material.dart';

class WelcomeBackColumn extends StatelessWidget {
  const WelcomeBackColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Welcome Back !',
          style: TextStyle(
              color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Enter personal details to you',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text('employee acount',
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 16,
                fontWeight: FontWeight.w500)),
      ],
    );
  }
}

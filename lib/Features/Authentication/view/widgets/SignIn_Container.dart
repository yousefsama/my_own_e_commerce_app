// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_divider.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/dont_have_an_account_row.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/login_with_another_account.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/signin_form.dart';

class SignInFullContainer extends StatelessWidget {
  const SignInFullContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome Back',
          style: TextStyle(
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 20),
        const SignInForm(),
        const CustomDivider(text: ' Sign in With '),
        const LoginWithAnotherAccountListView(),
        const SizedBox(height: 16),
        const DontHaveAnAccountRow(),
      ],
    );
  }
}

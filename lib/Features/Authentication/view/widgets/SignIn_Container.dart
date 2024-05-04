import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_divider.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/login_with_another_account.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/signin_form.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/Go_Router.dart';

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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account ?  ",
              style: TextStyle(color: Colors.grey),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                GoRouter.of(context).push(AppRouter.signUpView);
              },
              child: Text(
                "Sign up",
                style: TextStyle(
                    color: Colors.blue.shade900, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

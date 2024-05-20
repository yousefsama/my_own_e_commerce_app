// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/Signup_form.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_divider.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/login_with_another_account.dart';
import 'package:my_own_e_commerce_app/core/utils/Go_Router.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';

class SignUpViewBodyMobileLayout extends StatefulWidget {
  const SignUpViewBodyMobileLayout({super.key});

  @override
  State<SignUpViewBodyMobileLayout> createState() =>
      _SignUpViewBodyMobileLayoutState();
}

class _SignUpViewBodyMobileLayoutState
    extends State<SignUpViewBodyMobileLayout> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: true,
          child: Container(
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 1,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Get Started',
                  style: AppStyle.bold24(context)
                      .copyWith(color: Colors.blue.shade900),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SignUpForm(),
                const CustomDivider(text: ' Sign Up With '),
                const LoginWithAnotherAccountListView(),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account ?  ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        GoRouter.of(context).push(AppRouter.signInView);
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

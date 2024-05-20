import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_background_container.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_divider.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/dont_have_an_account_row.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/login_with_another_account.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/signin_form.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';

class SignInViewBodyTabletLayout extends StatefulWidget {
  const SignInViewBodyTabletLayout({super.key});

  @override
  State<SignInViewBodyTabletLayout> createState() =>
      _SignInViewBodyMobileLayoutState();
}

class _SignInViewBodyMobileLayoutState
    extends State<SignInViewBodyTabletLayout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomBackgroundContainer(
        height: MediaQuery.of(context).size.height * 1,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome Back',
                      style: AppStyle.bold24(context).copyWith(
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SignInForm(),
                    // const Spacer(),
                    const CustomDivider(text: ' Sign in With '),
                    const LoginWithAnotherAccountListView(),
                    const SizedBox(
                      height: 20,
                    ),
                    const DontHaveAnAccountRow(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

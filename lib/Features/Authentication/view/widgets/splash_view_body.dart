import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_background_container.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/login_and_signup_buttom.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/welcome_back_Column.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          Spacer(),
          WelcomeBackColumn(),
          Spacer(),
          LoginAndSignupButtoms()
        ],
      ),
    );
  }
}

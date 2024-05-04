import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/login_and_signup_buttom.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/welcome_back_Column.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Assets.imagesBackgroundImage))),
      child: const Column(
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

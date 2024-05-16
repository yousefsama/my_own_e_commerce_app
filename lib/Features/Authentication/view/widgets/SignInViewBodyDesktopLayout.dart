import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_background_container.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/signin_view_body_mobile_layout.dart';

class SignInViewBodyDesktopLayout extends StatelessWidget {
  const SignInViewBodyDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Row(
        children: [
          Expanded(child: SizedBox()),
          Expanded(child: SignInViewBodyMobileLayout()),
        ],
      ),
    );
  }
}

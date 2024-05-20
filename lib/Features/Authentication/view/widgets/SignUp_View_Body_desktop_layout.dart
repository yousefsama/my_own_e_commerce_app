import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/SignUp_View_Body_mobile_layout.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_background_container.dart';

class SignupViewBodyDesktopLayout extends StatelessWidget {
  const SignupViewBodyDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Row(
        children: [
          Expanded(child: SizedBox()),
          Expanded(child: SignUpViewBodyMobileLayout()),
        ],
      ),
    );
  }
}

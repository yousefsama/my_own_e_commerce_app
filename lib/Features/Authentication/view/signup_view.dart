import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/SignUp_View_Body_desktop_layout.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/SignUp_View_Body_mobile_layout.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/SignUp_View_Body_tablet_layout.dart';
import 'package:my_own_e_commerce_app/core/utils/adaptive_layout.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AdaptiveLayout(
            mobileLayout: (context) => const SignUpViewBodyMobileLayout(),
            tabletLayout: (context) => const SignUpViewBodyTabletLayout(),
            desktopLayout: (context) => const SignupViewBodyDesktopLayout()));
  }
}

import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/SignInViewBodyDesktopLayout.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/signin_view_body_mobile_layout.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/signin_view_body_tablet_layout.dart';
import 'package:my_own_e_commerce_app/core/utils/adaptive_layout.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => const SignInViewBodyMobileLayout(),
          tabletLayout: (context) => const SignInViewBodyTabletLayout(),
          desktopLayout: (context) => const SignInViewBodyDesktopLayout()),
    );
  }
}

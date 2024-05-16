import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/SignIn_Container.dart';

class SignInViewBodyMobileLayout extends StatefulWidget {
  const SignInViewBodyMobileLayout({super.key});

  @override
  State<SignInViewBodyMobileLayout> createState() =>
      _SignInViewBodyMobileLayoutState();
}

class _SignInViewBodyMobileLayoutState
    extends State<SignInViewBodyMobileLayout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 1,
            child: Container(
              padding: const EdgeInsets.all(24),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: const SignInFullContainer(),
            ),
          ),
        ],
      ),
    );
  }
}

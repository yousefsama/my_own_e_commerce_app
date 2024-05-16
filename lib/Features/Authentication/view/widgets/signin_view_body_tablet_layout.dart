import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/SignIn_Container.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_app_bar.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_background_container.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.9,
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
          )),
    );
  }
}

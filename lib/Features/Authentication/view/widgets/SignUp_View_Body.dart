import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_app_bar.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_background_container.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_divider.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_textField.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/login_with_another_account.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/Go_Router.dart';
import 'package:my_own_e_commerce_app/core/widgets/custom_buttom.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        height: MediaQuery.sizeOf(context).height * 1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.15,
              ),
              Container(
                padding: const EdgeInsets.all(24),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Column(
                  children: [
                    Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextField(
                      label: 'Full Name',
                      hintText: 'Enter Your Full Name',
                      isPassWord: false,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CustomTextField(
                      label: 'Email',
                      hintText: 'Enter Your Email',
                      isPassWord: false,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CustomTextField(
                      label: 'Password',
                      hintText: 'Enter Your Password',
                      isPassWord: true,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: Colors.blue.shade900,
                            value: isChecked,
                            onChanged: (newBool) {
                              setState(() {
                                isChecked = newBool!;
                              });
                            }),
                        const Text(
                          'I agree to the processing of ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Personal data',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomButtom(
                        title: 'Sign up',
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.circular(20),
                        textcolor: Colors.white,
                        onTap: () {}),
                    const CustomDivider(text: ' Sign Up With '),
                    const LoginWithAnotherAccountListView(),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account ?  ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            GoRouter.of(context).push(AppRouter.signInView);
                          },
                          child: Text(
                            "Sign up",
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
            ],
          ),
        ));
  }
}

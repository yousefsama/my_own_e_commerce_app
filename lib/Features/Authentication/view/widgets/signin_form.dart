// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/manager/signin_cubit/signin_cubit.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_textField.dart';
import 'package:my_own_e_commerce_app/core/utils/Go_Router.dart';
import 'package:my_own_e_commerce_app/core/widgets/custom_buttom.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool isHidePassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isChecked = false;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninLoading) {
          isLoading = true;
        } else if (state is SigninSuccess) {
          GoRouter.of(context).push(AppRouter.homeView);
        } else if (state is SigninFailure) {
          QuickAlert.show(
              context: context,
              type: QuickAlertType.error,
              title: 'Wrong',
              text: state.errorMessage);
        }
      },
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomFormTextField(
              controller: emailController,
              label: 'Email',
              hintText: 'Enter Your Email',
              isPassWord: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomFormTextField(
              controller: passwordController,
              label: 'Password',
              hintText: 'Enter Your Password',
              isPassWord: isHidePassword,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.blue.shade900,
                    value: isChecked,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool!;
                        if (isChecked) {
                          isHidePassword = false;
                        } else {
                          setState(() {
                            isHidePassword = true;
                          });
                        }
                      });
                    }),
                const Text(
                  'Show Password',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.forgetPasswordView);
                  },
                  child: Text(
                    'Forget Password ?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButtom(
                title: 'Sign in',
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(20),
                textcolor: Colors.white,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    try {
                      BlocProvider.of<SigninCubit>(context).signin(
                          email: emailController.text,
                          password: passwordController.text);
                    } catch (e) {}
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                }),
          ],
        ),
      ),
    );
  }
}

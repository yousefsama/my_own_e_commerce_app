// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
  late String email, password;
  bool isChecked = false;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomFormTextField(
            onChange: (value) {
              email = value;
            },
            label: 'Email',
            hintText: 'Enter Your Email',
            isPassWord: false,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomFormTextField(
            onChange: (value) {
              password = value;
            },
            label: 'Password',
            hintText: 'Enter Your Password',
            isPassWord: isHidePassword,
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
            height: 16,
          ),
          CustomButtom(
              title: 'Sign in',
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(20),
              textcolor: Colors.white,
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  try {
                    // ignore: unused_local_variable
                    final credential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: email, password: password);
                    QuickAlert.show(
                        context: context,
                        type: QuickAlertType.success,
                        title: 'Welcome Back',
                        confirmBtnText: 'Let\'s go',
                        onConfirmBtnTap: () {
                          Navigator.pop(context);
                          GoRouter.of(context).push(AppRouter.homeView);
                        },
                        text: 'Lets shopping now ?');
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      QuickAlert.show(
                          context: context,
                          type: QuickAlertType.error,
                          title: 'Error',
                          text: 'No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      QuickAlert.show(
                          context: context,
                          type: QuickAlertType.error,
                          title: 'Wrong',
                          text: 'Wrong password provided for that user.');
                    } else {
                      QuickAlert.show(
                          context: context,
                          type: QuickAlertType.error,
                          title: 'Wrong',
                          text: "the email address is badly formatted");
                    }
                  } catch (e) {
                    QuickAlert.show(
                        context: context,
                        type: QuickAlertType.error,
                        title: 'Wrong',
                        text: e.toString());
                  }
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              }),
        ],
      ),
    );
  }
}

// ignore_for_file: use_build_context_synchronously, file_names

import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_textField.dart';
import 'package:my_own_e_commerce_app/core/utils/Go_Router.dart';
import 'package:my_own_e_commerce_app/core/widgets/custom_buttom.dart';
import 'package:quickalert/quickalert.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isChecked = false;
  late String email, password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomFormTextField(
            keyboardType: TextInputType.name,
            onChange: (p0) {},
            label: 'Full Name',
            hintText: 'Enter Your Full Name',
            isPassWord: false,
          ),
          const SizedBox(height: 16),
          CustomFormTextField(
            keyboardType: TextInputType.emailAddress,
            onChange: (value) {
              email = value;
            },
            label: 'Email',
            hintText: 'Enter Your Email',
            isPassWord: false,
          ),
          const SizedBox(height: 16),
          CustomFormTextField(
            keyboardType: TextInputType.visiblePassword,
            onChange: (value) {
              password = value;
            },
            label: 'Password',
            hintText: 'Enter Your Password',
            isPassWord: true,
          ),
          const SizedBox(height: 8),
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
          const SizedBox(height: 16),
          CustomButtom(
              title: 'Sign up',
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(20),
              textcolor: Colors.white,
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  try {
                    await successCreatingAccountWithMessage(context);
                  } on FirebaseAuthException catch (e) {
                    weakPasswordAndAlreadyExistwithMessage(e, context);
                  } catch (e) {
                    anotherExeption(e, context);
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

  void anotherExeption(Object e, BuildContext context) {
    log(e.toString());
    QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: 'Error',
        text: e.toString());
  }

  void weakPasswordAndAlreadyExistwithMessage(
      FirebaseAuthException e, BuildContext context) {
    if (e.code == 'weak-password') {
      log('The password provided is too weak.');
      QuickAlert.show(
          context: context,
          type: QuickAlertType.warning,
          title: 'Warnind',
          text: 'The password provided is too weak');
    } else if (e.code == 'email-already-in-use') {
      log('The account already exists for that email.');
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: 'Error',
        text: 'The account already exists for that email.',
      );
    } else {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: 'Error',
        text: e.toString(),
      );
    }
  }

  Future<void> successCreatingAccountWithMessage(BuildContext context) async {
    // ignore: unused_local_variable
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        confirmBtnText: 'sign in',
        onConfirmBtnTap: () {
          Navigator.pop(context);
          Navigator.pop(context);
          GoRouter.of(context).push(AppRouter.signInView);
        },
        title: 'Success',
        text: 'Thanks for signing up! \n Let\'s sign in now');
  }
}

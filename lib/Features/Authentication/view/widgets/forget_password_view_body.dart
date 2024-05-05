// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_app_bar.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_background_container.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_textField.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/dont_have_an_account_row.dart';
import 'package:my_own_e_commerce_app/core/widgets/custom_buttom.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class ForgetPasswordViewBody extends StatefulWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
  late String email;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        height: MediaQuery.of(context).size.height * 1,
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
                child: Form(
                  key: formKey,
                  autovalidateMode: autovalidateMode,
                  child: Column(
                    children: [
                      Text(
                        'Password Recovery',
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Enter your email',
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomFormTextField(
                          hintText: 'Enter your email',
                          label: 'Email',
                          isPassWord: false,
                          onChange: (value) {
                            email = value;
                          }),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomButtom(
                          title: 'Send Email',
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(20),
                          textcolor: Colors.white,
                          onTap: () async {
                            if (formKey.currentState!.validate()) {
                              try {
                                // ignore: unused_local_variable
                                final credential = await FirebaseAuth.instance
                                    .sendPasswordResetEmail(email: email);
                                QuickAlert.show(
                                    context: context,
                                    type: QuickAlertType.success,
                                    title: 'Success send',
                                    text:
                                        'Password Reset has been send ,please check your email',
                                    confirmBtnText: 'Log in',
                                    onConfirmBtnTap: () {
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    showCancelBtn: true,
                                    cancelBtnText: 'cancle');
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'user-not-found') {
                                  log('No user found for that email.');
                                  QuickAlert.show(
                                      context: context,
                                      type: QuickAlertType.error,
                                      title: 'Error',
                                      text: 'No user found for that email.');
                                }
                              }
                            } else {
                              autovalidateMode = AutovalidateMode.always;
                              setState(() {});
                            }
                          }),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.2,
                      ),
                      const DontHaveAnAccountRow(),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

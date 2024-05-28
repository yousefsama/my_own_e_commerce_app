// ignore_for_file: use_build_context_synchronously, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/manager/signup_cubit/signup_cubit.dart';
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
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupLoading) {
          isLoading = true;
        } else if (state is SignupSuccess) {
          QuickAlert.show(
              context: context,
              type: QuickAlertType.success,
              title: 'Done',
              text: state.successMessage,
              onConfirmBtnTap: () {
                GoRouter.of(context).push(AppRouter.signInView);
              });
        } else if (state is SignupFailure) {
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
              keyboardType: TextInputType.name,
              onChange: (value) {},
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
                      BlocProvider.of<SignupCubit>(context)
                          .signup(email: email, password: password);
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

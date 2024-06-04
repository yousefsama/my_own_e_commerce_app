// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/manager/reset_cubit/reset_cubit.dart';
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
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetCubit, ResetState>(
      listener: (context, state) {
        if (state is ResetSuccess) {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.success,
            title: 'Done',
            text: 'Password Reset has been send ,please check your email',
            confirmBtnText: 'Log in',
            onConfirmBtnTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
          );
        } else if (state is ResetFailure) {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.error,
            title: 'error',
            text: state.errorMessage,
            confirmBtnText: 'ok',
            onConfirmBtnTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
          );
        }
      },
      child: CustomBackgroundContainer(
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
                          controller: emailController,
                          hintText: 'Enter your email',
                          label: 'Email',
                          isPassWord: false,
                        ),
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
                                  BlocProvider.of<ResetCubit>(context)
                                      .reset(email: emailController.text);
                                } catch (e) {
                                  QuickAlert.show(
                                    context: context,
                                    type: QuickAlertType.success,
                                    title: 'error',
                                    text: e.toString(),
                                    confirmBtnText: 'ok',
                                    onConfirmBtnTap: () {
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                  );
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
          )),
    );
  }
}

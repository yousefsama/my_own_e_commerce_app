import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_textField.dart';
import 'package:my_own_e_commerce_app/core/widgets/custom_buttom.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              'Rememeber me',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const Spacer(),
            Text(
              'Forget Password ?',
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
            title: 'Sign in',
            color: Colors.blue.shade900,
            borderRadius: BorderRadius.circular(20),
            textcolor: Colors.white,
            onTap: () {}),
      ],
    );
  }
}

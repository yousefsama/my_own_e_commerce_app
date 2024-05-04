import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/widgets/custom_textField.dart';
import 'package:my_own_e_commerce_app/core/widgets/custom_buttom.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}

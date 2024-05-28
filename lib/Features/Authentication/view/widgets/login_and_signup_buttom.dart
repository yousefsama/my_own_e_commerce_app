import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/manager/signup_cubit/signup_cubit.dart';
import 'package:my_own_e_commerce_app/core/utils/Go_Router.dart';
import 'package:my_own_e_commerce_app/core/widgets/custom_buttom.dart';

class LoginAndSignupButtoms extends StatelessWidget {
  const LoginAndSignupButtoms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButtom(
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.signInView,
              );
            },
            textcolor: Colors.white,
            title: 'Sign in',
            color: const Color.fromARGB(255, 3, 10, 45).withOpacity(0.5),
            borderRadius:
                const BorderRadius.only(topRight: Radius.circular(25)),
          ),
        ),
        Expanded(
          child: CustomButtom(
            onTap: () {
              GoRouter.of(context).push(AppRouter.signUpView);
            },
            textcolor: Colors.blue.shade900,
            title: 'Sign up',
            color: Colors.white,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(25)),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/login_view.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/Go_Router.dart';
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
                AppRouter.loginView,
              );
            },
            textcolor: Colors.white,
            title: 'Sign in',
            color: const Color.fromARGB(255, 3, 9, 45),
            borderRadius:
                const BorderRadius.only(topRight: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomButtom(
            onTap: () {},
            textcolor: Colors.blue,
            title: 'Sign up',
            color: Colors.white,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(16)),
          ),
        ),
      ],
    );
  }
}

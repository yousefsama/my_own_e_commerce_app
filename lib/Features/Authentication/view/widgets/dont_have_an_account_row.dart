import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/core/utils/Go_Router.dart';

class DontHaveAnAccountRow extends StatelessWidget {
  const DontHaveAnAccountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account ?  ",
          style: TextStyle(color: Colors.grey),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            GoRouter.of(context).push(AppRouter.signUpView);
          },
          child: Text(
            "Sign up",
            style: TextStyle(
                color: Colors.blue.shade900, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

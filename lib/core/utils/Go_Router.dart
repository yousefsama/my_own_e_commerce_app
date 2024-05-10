// ignore_for_file: file_names

import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/forget_password_view.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/signup_view.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/signin_view.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/splash_view.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/home_view.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/item_details_view.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/home_view_body.dart';

abstract class AppRouter {
  static const signInView = '/loginView';

  static const signUpView = '/signUpView';
  static const homeView = '/homeView';
  static const forgetPasswordView = '/forgetPasswordView';
  static const itemDetailsView = '/itemDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>
            const HomeView(), // convert it to splashView
      ),
      GoRoute(
        path: signInView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: forgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: itemDetailsView,
        builder: (context, state) => const ItemDetailsView(),
      ),
    ],
  );
}

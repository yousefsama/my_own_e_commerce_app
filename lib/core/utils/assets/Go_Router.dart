import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/signup_view.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/splash_view.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/signin_view.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/home_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const signInView = '/loginView';

  static const signUpView = '/signUpView';
  static const homeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
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
    ],
  );
}

import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/login_view.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/signup_view.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const signInView = '/loginView';

  static const signUpView = '/signUpView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: signInView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => const SignUpView(),
      ),
    ],
  );
}

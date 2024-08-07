import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/manager/reset_cubit/reset_cubit.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/manager/signin_cubit/signin_cubit.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/manager/signup_cubit/signup_cubit.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/manager/category/category_cubit.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/manager/product/product_cubit.dart';
import 'package:my_own_e_commerce_app/core/utils/Go_Router.dart';
import 'package:my_own_e_commerce_app/firebase_options.dart';
import 'package:my_own_e_commerce_app/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  BlocOverrides.runZoned(
    () {
      runApp(
        DevicePreview(
          enabled: true,
          builder: (context) => const ECommerceApp(), // Wrap your app
        ),
      );
    },
    blocObserver: SimpleBlocObserver(),
  );
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SigninCubit()),
        BlocProvider(create: (context) => SignupCubit()),
        BlocProvider(create: (context) => ResetCubit()),
        BlocProvider(create: (context) => CategoryCubit()),
        BlocProvider(create: (context) => ProductCubit()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

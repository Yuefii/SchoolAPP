import 'package:schoolapp/screens/login_screen.dart';
import 'package:schoolapp/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
};

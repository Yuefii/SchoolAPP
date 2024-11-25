import 'package:flutter/material.dart';
import 'package:schoolapp/core/constants.dart';
import 'package:schoolapp/routes.dart';
import 'package:schoolapp/screens/splash_screen.dart';

void main() {
  runApp(const SchoolApp());
}

class SchoolApp extends StatelessWidget {
  const SchoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(
              fontSize: 16,
              color: kTextBlackColor,
              height: 0.5,
            ),
            hintStyle: TextStyle(
              fontSize: 16,
              color: kTextBlackColor,
              height: 0.5,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
                width: 0.7,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
              ),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.2,
              ),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.2,
              ),
            ),
          )),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

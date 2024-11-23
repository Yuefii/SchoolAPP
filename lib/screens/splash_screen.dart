import 'package:flutter/material.dart';
import 'package:schoolapp/core/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', height: 150, width: 150),
                Text(
                  'School',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: kTextWhiteColor,
                        fontSize: 50,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 2.0,
                      ),
                ),
                Text(
                  'Aplication',
                  style: GoogleFonts.pattaya(
                    color: kTextWhiteColor,
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

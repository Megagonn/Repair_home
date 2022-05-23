
import 'package:flutter/material.dart';
import 'package:repairhome/signin.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1F319D),
      body:  SplashScreenView(
      navigateRoute: SignIn(),
      // text: WavyAnimatedText(
      //   "Repair Home",
      //   textStyle: const TextStyle(
      //     color: Color(0xFF1F319D),
      //     fontSize: 32.0,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
      imageSrc: "assets/r1.png",
      // paddingText
      // paddingLoading
    )
    );
  }
}

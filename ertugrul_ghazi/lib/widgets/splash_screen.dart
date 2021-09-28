import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ertugrul_ghazi/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget splashScreen() {
  return AnimatedSplashScreen(
    splashIconSize: 300,
    splash: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage("images/splash.png"), fit: BoxFit.fill),
      ),
    ),
    nextScreen: HomeScreen(),
    splashTransition: SplashTransition.rotationTransition,
  );
}

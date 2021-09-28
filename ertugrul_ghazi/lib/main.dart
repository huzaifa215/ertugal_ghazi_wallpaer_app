import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ertugrul_ghazi/screens/home_screen.dart';
import 'package:ertugrul_ghazi/widgets/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashScreen(),
      //home: HomeScreen(),
    );
  }
}

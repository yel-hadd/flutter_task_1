import 'package:flutter/material.dart';
import 'onboarding.dart';
import 'loginScreen.dart';
import 'home.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    // theme: ThemeData.dark(),
    color: Colors.green,
    initialRoute: '/onboarding',
    debugShowCheckedModeBanner: false,
    routes: {
      '/onboarding': (context) => const Onboarding(),
      '/loginscreen': (context) => const LoginScreen(),
      '/home': (context) => const Home(),
    },
  ));
}
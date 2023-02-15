import 'package:flutter/material.dart';
import 'onboarding.dart';
import 'loginScreen.dart';

void main() {
  runApp(MaterialApp(
    // theme: ThemeData.dark(),
    initialRoute: '/loginscreen',
    debugShowCheckedModeBanner: false,
    routes: {
      '/onboarding': (context) => const Onboarding(),
      '/loginscreen': (context) => const LoginScreen(),
    },
  ));
}
import 'dart:js';
import 'package:flutter/material.dart';
import 'Onboarding.dart';
import 'LoginScreen.dart';

void main() {
  runApp(MaterialApp(
    // theme: ThemeData.dark(),
    initialRoute: '/onboarding',
    debugShowCheckedModeBanner: false,
    routes: {
      '/onboarding': (context) => const Onboarding(),
      '/loginScreen': (context) => const LoginScreen(),
    },
  ));
}
import 'dart:js';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image : AssetImage("assets/onboarding_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child : Column(
            children: <Widget>[
              SizedBox(height: 90, child: Image.asset("assets/icon.png")),
          ],
        ),
        ),
        
      ),
    );
  }
}
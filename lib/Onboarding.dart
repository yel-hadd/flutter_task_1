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
            image: AssetImage("assets/onboarding_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 500),
              SizedBox(height: 90, child: Image.asset("assets/icon.png")),
              SizedBox(height: 40),
              Text(
                'Welcome to our store',                  
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                
              ),
              Text(
                'Get your groceries as fast as one hour',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Center(
                child:
                  MaterialButton(
                    onPressed: () {},
                    child:
                      Text("Get Started"),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

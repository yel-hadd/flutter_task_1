import 'dart:js';
import 'package:flutter/material.dart';
import 'loginScreen.dart';

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
            image: AssetImage("assets/onboarding_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(height: 60, child: Image.asset("assets/icon.png")),
                const SizedBox(height: 10),
                const Text(
                  'Welcome to our store',                  
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.white),                
                ),
                const SizedBox(height: 5),
                const Text(
                  'Get your groceries as fast as one hour',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Center(
                  child:
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      color: Colors.green,
                      height: 60,
                      minWidth: 350,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                      child:
                        const Text(
                          "Get Started",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),
                          ),
                    )
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

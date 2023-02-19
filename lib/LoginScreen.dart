import 'package:flutter/material.dart';
import 'utils/custom_icons_icons.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("login_page_top.jpg"),
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
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Get your groceries\nwith nectar',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(height: 15),
                IntlPhoneField(
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  onChanged: (phone) {},
                  onCountryChanged: (country) {},
                ),
                const Text(
                  "Or connect with social media",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 60,
                  width: 1080,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Home())));
                    },
                    icon: const Icon(
                        CustomIcons.google),
                    label: const Text(
                      "Continue with Google",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22.0,
                        color: Colors.white),
                      ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      fixedSize: const Size(300, 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 60,
                  width: 1080,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Home())));
                    },
                    icon: const Icon(
                        CustomIcons.facebook_f),
                    label: const Text(
                      "Continue with Facebook",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22.0,
                        color: Colors.white),
                      ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize: const Size(300, 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
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

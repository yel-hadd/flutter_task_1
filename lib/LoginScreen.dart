import 'package:flutter/material.dart';

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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.black),                
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child:
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.green,
                      height: 60,
                      minWidth: 350,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                      child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.home, color: Colors.white,),
                            SizedBox(width: 15),
                            Text(
                              "Get Started",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),
                              ),
                          ],
                        ),
                    )
                ),
                const SizedBox(height: 10),
                Center(
                  child:
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.green,
                      height: 60,
                      minWidth: 350,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                      child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.facebook, color: Colors.white,),
                            SizedBox(width: 15),
                            Text(
                              "Get Started",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),
                              ),
                          ],
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
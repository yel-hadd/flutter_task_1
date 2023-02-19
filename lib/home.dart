import 'package:flutter/material.dart';
import 'utils/custom_icons_icons.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Find Products",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Search Store",
                  prefixIcon: Icon(Icons.search, color: Colors.black,),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    ),
                  ),
                ),
            const SizedBox(height: 16.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  20,
                  (index) => Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index % 2 == 0 ? Colors.lightBlue : Colors.lightGreen,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: [
                              const SizedBox(
                                height: 90,
                                child: Image(
                                  image: AssetImage("assets/fruit.png"),
                                  ),
                              ),
                              const SizedBox(height: 5,),
                              Text(
                              'Lorem Ipsum Product ${index + 1}',
                              overflow: TextOverflow.clip,
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            ]
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
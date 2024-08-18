import 'package:flutter/material.dart';
//import 'package:foodappchat/first_screen.dart';
import 'package:foodappchat/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(100.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 60),
              Image.asset('assets/images/logo.png'),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()),
                  );
                },
                child: Text('Go to Second Screen'),
              ),
              Container(
                alignment: Alignment.bottomLeft,
              ),
              SizedBox(height: 60),
              Image.asset('assets/images/food1-removebg-preview 1.png'),
            ],
          ),
        ),
      ),
    );
  }
}

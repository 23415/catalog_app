// ignore_for_file: prefer_const_constructors

import 'package:catalogapp/screens/login_page.dart';
import 'package:flutter/material.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/signup.png", width: 370, height: 350),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'AMC CANTEEN',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter your name', labelText: 'Full Name'),
              autofocus: true,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter your password', labelText: 'password'),
              obscureText: true,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => LoginPage())));
                },
                child: Text('SIGN UP'))
          ],
        ),
      ),
    );
  }
}

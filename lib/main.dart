import 'package:catalogapp/screens/home_page.dart';
import 'package:catalogapp/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: "/",
      routes: {
        "/": (context)=> Homepage(),
        "/login": (context)=> LoginPage(),
      },
    );
  }
}

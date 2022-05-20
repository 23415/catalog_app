import 'package:catalogapp/routes.dart';
import 'package:catalogapp/screens/home_page.dart';
import 'package:catalogapp/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/login",
      routes: {
        Routes.homeroutes: (context)=> Homepage(),
        Routes.loginroutes: (context)=> LoginPage(),
      },
    );
  }
}

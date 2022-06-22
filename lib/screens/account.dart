import 'package:flutter/material.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Account'),
      ),
      body: Center(
        child: Text(
          'Account page',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}

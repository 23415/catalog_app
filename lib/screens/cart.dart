import 'dart:ui';

import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text('CART'),
        centerTitle: true,
      ),
      body: Text(
        'your selected food items will be visible here',
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}

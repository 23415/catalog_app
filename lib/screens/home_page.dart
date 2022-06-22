// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:catalogapp/screens/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'account.dart';
import 'food.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Fooddetail> fooddetail = [
      Fooddetail(
          id: 't1',
          image: "assets/samosa.png",
          title: 'Samosa',
          price: 15,
          detail: 'with green & red chutney                  '),
      Fooddetail(
          id: 't2',
          image: "assets/tea.png",
          title: 'Tea/Coffee',
          price: 10,
          detail: 'kesar milk ,black coffee                       '),
      Fooddetail(
          id: 't3',
          image: "assets/idli.png",
          title: 'Idli',
          price: 30,
          detail: 'with sambhar & coconut chutney'),
      Fooddetail(
          id: 't4',
          image: "assets/dosa.png",
          title: 'Dosa',
          price: 40,
          detail: 'with sambhar & coconut chutney'),
      Fooddetail(
          id: 't5',
          image: "assets/cholebhature.png",
          title: 'Chole Bhature  ',
          price: 60,
          detail: 'and chole                                                 '),
      Fooddetail(
          id: 't6',
          image: "assets/gobiparatha.png",
          title: 'Gobi Paratha',
          price: 40,
          detail: 'with green chutney & sabji                '),
      Fooddetail(
          id: 't7',
          image: "assets/pavbhaji.png",
          title: 'Pav Bhaji',
          price: 90,
          detail: 'with green & red chutney                  '),
    ];

    return Scaffold(
      //drawer: Drawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("AMC CANTEEN"),
        elevation: 20,
        actions: [
          Container(
            margin: EdgeInsets.all(12),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search_sharp),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Cartpage()),
                    );
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: const Icon(Icons.account_circle_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Accountpage()),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.orange),
        child: IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Cartpage()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: fooddetail.map((tx) {
            return Card(
              elevation: 5,
              shadowColor: Colors.purple[300],
              child: Row(
                children: [
                  Container(
                    //height: 1000,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 1.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.all(12),
                    child: SingleChildScrollView(
                      child: Container(
                        height: 100,
                        child: Image.asset(
                          tx.image,
                          width: 100,
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tx.title,
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '₹${tx.price}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(171, 44, 68, 250)),
                      ),
                      Text(
                        tx.detail,
                        style: TextStyle(
                            fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Card(
                      color: Color.fromARGB(255, 104, 58, 183),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Cartpage()),
                          );
                        },
                        child: Icon(CupertinoIcons.add),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList() as dynamic,
        ),
      ),
    );
  }
}

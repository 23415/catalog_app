import 'package:catalogapp/routes.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/login_page.png"),
              SizedBox(height: 10,),
              const Text("WELCOME", style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold ),),
              SizedBox(height: 5,),
              TextFormField(decoration: InputDecoration(hintText: "Enter Your Username", labelText: "Username"),),
              SizedBox(height: 10,),
              TextFormField(obscureText: true,
                decoration: InputDecoration(hintText: "Enter Your Password", labelText: "Password",
                ),),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, Routes.homeroutes);
              }, child: Text("LOGIN"), style: TextButton.styleFrom(
                minimumSize:const Size(100, 40),
              ),)

            ],
          ),
        ),
      ),
    );
  }
}

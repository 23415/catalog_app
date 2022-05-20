import 'package:catalogapp/routes.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
   LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool buttonname=false;
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
              Text("WELCOME $name", style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold ),),
              SizedBox(height: 5,),
              TextFormField(decoration: InputDecoration(hintText: "Enter Your Username", labelText: "Username"),
              onChanged: (value){
                name=value;
                setState((){});
                }
              ),
              SizedBox(height: 10,),
              TextFormField(obscureText: true,
                decoration: InputDecoration(hintText: "Enter Your Password", labelText: "Password",
                ),),
              const SizedBox(height: 10,),
              InkWell(
                onTap: ()async{
                  setState((){
                    buttonname=true;
                  });
                  await Future.delayed(Duration(seconds:1));
                  Navigator.pushNamed(context, Routes.homeroutes);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds:1),
                  height: 40,
                  width: 100,
                  alignment: Alignment.center,
                  child:buttonname? Icon(Icons.done): Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 16)),
                  decoration: BoxDecoration(shape: buttonname? BoxShape.circle: BoxShape.rectangle,color: Colors.deepPurple,),
                ),
              )

              // ElevatedButton(onPressed: (){
              //   Navigator.pushNamed(context, Routes.homeroutes);
              // }, child: Text("LOGIN"), style: TextButton.styleFrom(
              //   minimumSize:const Size(100, 40),
              // ),)

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ali_notes/pages/home.dart';
import 'package:ali_notes/pages/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset("assets/Circulo.png", width: 550,fit: BoxFit.cover,),
          SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 85),
                  Avatar(),
                  SizedBox(height: 15),
                  Email(),
                  SizedBox(height: 30.0,),
                  Password(),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      textStyle: TextStyle(fontSize: 17.0)
                    ),
                      onPressed: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Register()))
                      },
                      child: Text("You don't have an account? Sign up here",)
                  ),
                  SizedBox(height: 20),
                  ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: RaisedButton(

                      onPressed: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()))
                      },
                      color: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Login", style: TextStyle(fontSize: 20.0),),
                    ),
                  )
                ],
              )
          )
        ],
      )
    );
  }

  Widget Avatar(){
    return Column(
      children: [
        Column(
          children: [
            Image.asset("assets/Avatar.png"),
            Text("Hi! Wellcome", style: TextStyle(fontSize: 30),)
          ],
        ),
      ],
    );
  }

  Widget Email(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0,0,30,0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Email", style: TextStyle(fontSize: 17),)
            ],
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
          )
        ],
      ),
    );
  }

  Widget Password(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Password", style: TextStyle(fontSize: 17),),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
        ],
      ),
    );
  }
}

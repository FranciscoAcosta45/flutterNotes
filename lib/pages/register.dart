import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/Circulo.png", width: 550,fit: BoxFit.cover,),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(height: 45,),
                    Avatar(),
                    SizedBox(height: 15,),
                    UserName(),
                    SizedBox(height: 15,),
                    Email(),
                    SizedBox(height: 15,),
                    Password(),
                    SizedBox(height: 15,),
                    ConfirmPassword(),
                    SizedBox(height: 25,),
                    ButtonTheme(
                      minWidth: 300.0,
                      height: 50.0,
                      child:
                      RaisedButton(
                        onPressed: () => {},
                        color: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("Register", style: TextStyle(fontSize: 20.0),),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Avatar(){

    return Column(
      children: [
        Column(
          children: [
            Image.asset("assets/Avatar.png"),
            Text("Register", style: TextStyle(fontSize: 30),)
          ],
        ),
      ],
    );
  }

  Widget UserName(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0,0,30,0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("User Name", style: TextStyle(fontSize: 17),)
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

  Widget ConfirmPassword(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Confirm Password", style: TextStyle(fontSize: 17),),
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

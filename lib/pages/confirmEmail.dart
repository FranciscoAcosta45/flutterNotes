// ignore: file_names
// ignore_for_file: file_names
import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class ConfrimEmail extends StatefulWidget {
  final String user;
  const ConfrimEmail( this.user, {Key? key}) : super(key: key);

  @override
  _ConfrimEmailState createState() => _ConfrimEmailState();
}

class _ConfrimEmailState extends State<ConfrimEmail> {
  String _code = "";
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
                    code(),
                    SizedBox(height: 25,),
                    ButtonTheme(
                      minWidth: 300.0,
                      height: 50.0,
                      child:
                      RaisedButton(
                        onPressed: () => confirm(widget.user,_code),
                        color: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("Register", style: TextStyle(fontSize: 20.0),),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget code(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 280, 30.0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Confirm Email Code", style: TextStyle(fontSize: 17),),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            onChanged: (value){
              setState(() {
               _code = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Future<void> confirm(String email, String code) async {
    print("Confirmar correo");
    final userPool = CognitoUserPool("us-east-1_rPA1nH964","17954fgss6na0dsu27t0fq1cmc");

    final cognitoUser = CognitoUser(email, userPool);

    bool registrationConfirmed = false;
    try {
      registrationConfirmed = await cognitoUser.confirmRegistration(code);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    } catch (e) {
      print(e);
    }
    print(registrationConfirmed);
  }
}

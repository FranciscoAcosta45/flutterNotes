import 'package:ali_notes/pages/home.dart';
import 'package:ali_notes/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:amazon_cognito_identity_dart_2/cognito.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email = "";
  String _password ="";
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
                      //contraseña : 9Q@sdoihnf
                      onPressed: () => iniciarSecion(_email,_password)/*{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()))
                      }*/,
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
            onChanged: (value){
              setState(() {
                _email = value;
              });
            },
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
            onChanged: (value){
              setState(() {
                _password = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Future<void> iniciarSecion(String email, String password) async {
    print("Iniciar secion");
    final userPool = CognitoUserPool("xxxxxxxxxxxx","xxxxxxxxxxxxxxxxxxx");
    final cognitoUser = CognitoUser(email, userPool);
    final authDetails = AuthenticationDetails(
      username: email,
      password: password,
    );

    CognitoUserSession? session;

    try {
      session = await cognitoUser.authenticateUser(authDetails);
      print("funcionoooooo");
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } on CognitoUserNewPasswordRequiredException catch (e) {
      print(e);
    } on CognitoUserMfaRequiredException catch (e) {
      print(e);
    } on CognitoUserSelectMfaTypeException catch (e) {
      print(e);
    } on CognitoUserMfaSetupException catch (e) {
      print(e);
    } on CognitoUserTotpRequiredException catch (e) {
      print(e);
    } on CognitoUserCustomChallengeException catch (e) {
      print(e);
    } on CognitoUserConfirmationNecessaryException catch (e) {
      print(e);
    } on CognitoClientException catch (e) {
      print(e);
    }catch (e) {
      print(e);
    }
    print(session!.getAccessToken().getJwtToken());
  }
}

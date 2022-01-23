import 'package:flutter/material.dart';

class ConfrimEmail extends StatefulWidget {
  const ConfrimEmail({Key? key}) : super(key: key);

  @override
  _ConfrimEmailState createState() => _ConfrimEmailState();
}

class _ConfrimEmailState extends State<ConfrimEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/Circulo.png", width: 550,fit: BoxFit.cover,),
          SafeArea(
            child: ListView(
              children: [

              ],
            ),
          )
        ],
      ),
    );
  }


}

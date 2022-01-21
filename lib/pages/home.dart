import 'package:ali_notes/pages/addNote.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/Circulo.png", width: 550,fit: BoxFit.cover,),
          SafeArea(
              child: ListView(
                children: [
                  Bar()
                ],
              )
          )
        ],
      ),
    );
  }

  Widget Bar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddNote()))
            },
            child: Row(
              children: [
                Icon(Icons.add, color: Colors.deepPurpleAccent),
                Text("Add Note", style: TextStyle(fontSize: 17, color: Colors.deepPurpleAccent),)
              ],
            )
        )
      ],
    );
  }
}

// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
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
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                            child: Text("Add your note here", style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),),
                          )
                        ],
                      ),
                      SizedBox(height: 160),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,20,0),
                            child: RawMaterialButton(
                              onPressed: () {},
                              elevation: 2.0,
                              fillColor: Colors.blueGrey,
                              // ignore: prefer_const_constructors
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 35.0,
                              ),
                              padding: EdgeInsets.all(15.0),
                              shape: CircleBorder(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      TitleNote(),
                      SizedBox(height: 15,),
                      DescriptionNote(),
                      SizedBox(height: 15,),
                      ButtonTheme(
                        minWidth: 300.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () => {},
                          color: Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text("Add Note", style: TextStyle(fontSize: 20.0),),
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


  Widget TitleNote(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Title", style: TextStyle(fontSize: 17),),
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

  Widget DescriptionNote(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Description", style: TextStyle(fontSize: 17),),
            ],
          ),
          SizedBox(
            height: 100.0,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





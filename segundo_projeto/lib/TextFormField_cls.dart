import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormField_cls extends StatefulWidget {
  TextFormField_cls(){}




  @override
  State<TextFormField_cls> createState() => _Checkbox_clsState();
}
class _Checkbox_clsState extends State<TextFormField_cls> {
  var taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Campo de Texto"),
        backgroundColor: Theme.of(context).primaryColorLight,
        actions: [Icon(Icons.menu)],
      ),
      body: Container(
        child: TextFormField(
              controller: taskController,
              style: TextStyle(
                color: Colors.black,
                fontSize:  21,
              ),
              decoration: InputDecoration(
                labelText: "Seu nome",
                labelStyle: TextStyle(color: Colors.blueAccent)
              ),
          
          )
            
      ),


    );
  }
}
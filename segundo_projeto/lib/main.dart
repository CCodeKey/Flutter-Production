import 'package:flutter/material.dart';
import 'package:segundo_projeto/TextFormField_cls.dart';
// import 'package:segundo_projeto/CheckboxList_cls.dart';
// import 'ListView_cls.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ListView",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: TextFormField_cls(),
    );
  }
}
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:segundo_projeto/modules/item.dart';

// ignore: must_be_immutable
class ListView_cls extends StatefulWidget {
  var items = <Item>[];

  ListView_cls(){
    items = [];
    items.add(Item(nome:"Maçã",done:false));
    items.add(Item(nome:"Banana",done:true));
    items.add(Item(nome:"Laranja",done:false));

  }

  @override
  State<ListView_cls> createState() => _HomePageState();
}

class _HomePageState extends State<ListView_cls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Compras"),
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Container(
        child:ListView.builder(
          itemCount: widget.items.length,
          itemBuilder:(BuildContext ctct  , int index){
              return Text(widget.items[index].nome);
          }),
      ),
    );
  }
}
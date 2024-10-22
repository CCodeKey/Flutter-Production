import 'package:flutter/material.dart';
import 'package:segundo_projeto/modules/item.dart';

// ignore: must_be_immutable
class CheckboxList_cls extends StatefulWidget {
  var items = <Item>[];

  CheckboxList_cls(){
    items = [];
    items.add(Item(nome: "Goiaba", done: true));
    items.add(Item(nome: "Uva", done: false));
    items.add(Item(nome: "Pera", done: false));
  }

  @override
  State<CheckboxList_cls> createState() => _Checkbox_clsState();
}
class _Checkbox_clsState extends State<CheckboxList_cls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box"),
        backgroundColor: Theme.of(context).primaryColorLight,
        actions: [Icon(Icons.menu)],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder:(BuildContext ctxt, int index){

            final item = widget.items[index];
            
            return CheckboxListTile(
              title: Text(item.nome),
              key: Key(item.nome),
              value: item.done, 
              onChanged: (value) {
                  setState(() {
                    item.done = value!;
                  });
                });
        }),
      ),



    );
  }
}
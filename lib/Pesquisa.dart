import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Item{
  String pergunta;
  bool resposta;
  Item({this.pergunta,this.resposta});
}

class Pesquisa extends StatefulWidget{
  @override
  var itens = new List<Item>();
  Pesquisa(){
    itens = [];
    itens.add(Item(pergunta:'A aula é boa',resposta:false));
    itens.add(Item(pergunta:'O(A) professor(a) tem didática',resposta:false));
    itens.add(Item(pergunta:'O conteúdo apresentado é satisfatório',resposta:false));
    itens.add(Item(pergunta:'Os equipamentos estão em bom estado',resposta:false));
  }
  _PesquisaState createState() => _PesquisaState();
}
class _PesquisaState extends State<Pesquisa>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responda a pesquisa'),
      ),
      body: ListView.builder(
        itemCount: widget.itens.length,
        itemBuilder: (BuildContext ctxt, int indice) {
          final item = widget.itens[indice];
          return CheckboxListTile(
            title: Text(item.pergunta),
            key: Key(item.pergunta),
            value: item.resposta,
            onChanged: (value){
              setState(() {
                item.resposta = value;
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
         onPressed: () {
          Navigator.pop(context);
         },
    ));
  }
}




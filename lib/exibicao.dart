import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exibicao extends StatefulWidget{
  @override
  _ExibicaoState createState() => _ExibicaoState();
}
class _ExibicaoState extends State<Exibicao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Estatísticas da Pesquisa')
        )
    );
  }
}

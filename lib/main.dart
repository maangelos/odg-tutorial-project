import 'package:flutter/material.dart';

import 'Pesquisa.dart';
import 'exibicao.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App de Pesquisa'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: RaisedButton(
                  child: Text('Fazer Pesquisa'), onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Pesquisa()));
              },
              ),
            ),
            Center(
                child: RaisedButton(
                  child: Text('Ir para Estatísticas'), onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Exibicao()));
                },
            ),
            )
          ],
        )));
  }
}


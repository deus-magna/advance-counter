import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  // Creamos un textStyle para re utilizar codigo, 
  // es final porque los statelessWidget se quejan porque son @inmutable
  final TextStyle estiloTexto = new TextStyle(fontSize: 25);

  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola Mundo'),
        centerTitle: true,
        elevation: 8.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps', style: estiloTexto),
            Text('0', style: estiloTexto),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola mundo');
        },
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
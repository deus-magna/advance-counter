import 'dart:developer' as prefix0;

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _CounterScreenState();
  
}

class _CounterScreenState extends State<CounterScreen> {

  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull'),
        centerTitle: true,
        elevation: 8.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _createButtons(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset,),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove),),
        SizedBox(width: 5.0),
        FloatingActionButton(onPressed: _add, child: Icon(Icons.add),)
      ],
    );
  }

  void _add() {
    setState(() => _conteo++ );
  }

  void _sustraer(){
    setState(() => _conteo-- );
  }

  void _reset(){
    setState(() => _conteo = 0 );
  }
}
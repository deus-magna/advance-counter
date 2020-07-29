import 'package:flutter/material.dart';

import 'package:contador/src/screens/home_screen.dart';
import 'package:contador/src/screens/counter_screen.dart';
// Nuestras importaciones

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: CounterScreen(),
      ),
    );
  }

}
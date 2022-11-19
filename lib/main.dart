import 'package:flutter/material.dart';
import 'package:my_first_app/screens/counter_screen.dart';
// import 'package:my_first_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

//Stateles no mantienen el estado de la app
//Stateful mantienen los estados de la app
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //Quitar el debug marcado
      home: CounterScreen(),
    );
  }
}

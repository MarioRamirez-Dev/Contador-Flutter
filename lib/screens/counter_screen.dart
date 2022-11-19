import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0; //Propiedad
  String accion = " ";

  @override
  Widget build(BuildContext context) {
    const fontSize1 = TextStyle(fontSize: 35);
    const fontSize2 = TextStyle(fontSize: 30);
    return Scaffold(
      //Scaffold es un Widget Especial
      appBar: AppBar(
        title: const Text("Contador de Clics"),
        elevation: 2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Usted ha, $accion',
            ),
            const Text(
              "Número de Clics:",
              style: fontSize1,
            ),
            Text(
              '$counter',
              style: fontSize2,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () {
              counter--;
              accion = "Disminuido el contador";
              setState(() => {});
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.exposure_zero_outlined),
            onPressed: () {
              counter = 0;
              accion = "Reiniciado el contador";
              setState(() => {});
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () {
              counter++;
              accion = "Aumentado el contador";
              setState(() => {});
            },
          ),
        ],
      ),
    );
  }
}

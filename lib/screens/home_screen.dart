import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize1 = TextStyle(fontSize: 35);
    const fontSize2 = TextStyle(fontSize: 30);
    int counter = 0;
    return Scaffold(
      //Scaffold es un Widget Especial
      appBar: AppBar(
        title: const Text("Contador de Clics"),
        elevation: 2,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_sharp),
        onPressed: () {
          counter += 1;
        },
      ),
    );
  }
}

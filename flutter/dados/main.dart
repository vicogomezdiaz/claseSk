import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Juego de Dados'),
          backgroundColor: Colors.purple.shade500,
        ), // AppBar
        body: Dados(),
      ), // Scaffold
    ), // MaterialApp
  );
}

class Dados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
				  TirarDado("1 + 1 es dos");
              },
              child: Image.asset('images/dado1.png'),
            ), // FlatButton
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
				  TirarDado("2");
              },
              child: Image.asset('images/dado2.png'),
            ), // FlatButton
          ), // Expanded
        ], // Widget
      ), // Row
    ); // Center
  }
}


void TirarDado(caras) {
    print('click dado ->'+ caras);
	const lista = ['images/dado1.png', 'images/dado2.png', 'images/dado3.png', 'images/dado4.png', 'images/dado5.png', 'images/dado6.png'];
}



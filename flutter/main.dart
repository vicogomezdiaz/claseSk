import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				backgroundColor: Colors.red ,
				body: SafeArea(
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.center,
						children: <Widget>[
							CircleAvatar(
								radius:50.0,
								backgroundImage: AssetImage('images/jea.jpg'),
							),
							Text(
								'Jorge Eduardo Ardila',
								style: TextStyle(
									fontSize:25.0,
									color: Colors.white,
									fontFamily: 'Pacifico',
								),
							),
						],	
					),
				),
			), // Scaffold
		); // MaterialApp
	}
}


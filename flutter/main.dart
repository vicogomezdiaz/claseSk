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
				appBar: AppBar(
					backgroundColor: Colors.blue,
					title:Image.asset('images/jea.jpg'),
					actions: <Widget>[
						IconButton(
								icon: const Icon(Icons.adb),
								tooltip:'Hola Mundo',
								onPressed: () {
									
								},
						),
					],
				),
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
							Container(
								width: 400.0,
								height:50.0,
								color: Colors.white,
								child: Container(
									child: Text('API Developer Digitai'),
									),	
							),
							Container(
								width: 400.0,
								height:50.0,
								color: Colors.purple,
								child:  Text('573153418393'),
							),
							Container(
								width: 400.0,
								height:50.0,
								color: Colors.teal,
											child: Image(image: AssetImage('images/avatar.jpeg')),
							),
						],	
					),
				),
			), // Scaffold
		); // MaterialApp
	}
}


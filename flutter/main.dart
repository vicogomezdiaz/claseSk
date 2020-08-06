import 'package:flutter/material.dart';

void main() {
	runApp(MyApp());
}

// hot reload
class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
				home: Scaffold(
						backgroundColor: Colors.white,
						body: SafeArea(
								child: Column (
										crossAxisAlignment: CrossAxisAlignment.stretch,
										children: <Widget>[
											Container(
													width: 100.0,
													height:150.0,
													color: Colors.green,
													child: Text('primera'),
											),
											SizedBox(height: 5.0),
											Container(
													width: 90.0,
													height: 150.0,
													color: Colors.pink,
													child: Row (
															crossAxisAlignment: CrossAxisAlignment.stretch,
															children: <Widget>[
																Container(
																		width: 75.0,
																		height: 50.0,
																		color: Colors.indigo,
																		child: Text('c1'),
																),
																Container(
																		width: 75.0,
																		height: 50.0,
																		color: Colors.grey,
																		child: Text('c2'),
																),
																Container(
																		width: 75.0,
																		height: 50.0,
																		color: Colors.grey,
																		child: Image.network('https://static01.nyt.com/images/2013/02/10/fashion/0210Culturalstudies/0210Culturalstudies-jumbo-v2.jpg'),
																),
																Container(
																		width: 75.0,
																		height: 50.0,
																		color: Colors.black,
																		child: Text(
																				'cyyyyyyyyyy4',
																				style:TextStyle(color: Colors.white.withOpacity(0.5)),
																		),
																),
															],
															),
															),
															SizedBox(height: 5.0),

															Container(
																	width: 70.0,
																	height: 150.0,
																	color: Colors.blue,
																	child: Text('Contenedor 003'),
															),
															], // Widgets list		
															),
															),
															),
															); // MaterialApp	
	}
}



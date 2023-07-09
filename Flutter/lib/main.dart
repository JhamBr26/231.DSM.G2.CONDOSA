import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/varios-periodos-pagados.dart';
// import 'package:myapp/page-1/escoger-tipo-de-consulta.dart';
// import 'package:myapp/page-1/escoger-periodo.dart';
// import 'package:myapp/page-1/varios-periodos-pendiente-de-pago.dart';
// import 'package:myapp/page-1/gasto-laboral-administracion-y-contabilidad.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Scene(),
		),
		),
	);
	}
}

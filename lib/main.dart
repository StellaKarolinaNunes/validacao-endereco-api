import 'package:flutter/material.dart';
import './screens/matricula_form.dart';

void main() {
  runApp(const MatriculaApp());
}

class MatriculaApp extends StatelessWidget {
  const MatriculaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MatriculaForm(),
    );
  }
}

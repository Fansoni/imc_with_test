import 'package:flutter/material.dart';
import 'package:imc/pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculadora de IMC',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hospital_app/pages/boas_vindas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoasVindas(),
    );
  }
}
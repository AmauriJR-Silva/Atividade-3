import 'package:flutter/material.dart';
import 'package:netflix/views/inicio.dart';
import 'package:netflix/components/barra_navegacao.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Netflix'),
          backgroundColor: Colors.red,
        ),
        body: const Inicio(),
        bottomNavigationBar: const BarraNavegacao(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
//parte de registro
void main() => runApp(const registro());

class registro extends StatelessWidget {
  const registro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Registro'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
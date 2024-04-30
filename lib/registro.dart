import 'package:flutter/material.dart';
//parte de registro
void main() => runApp(const registro());

class registro extends StatelessWidget {
  const registro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registro de Usuarios',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Registro de Usuarios'),
          centerTitle: true,
          
          

        ),
        ),
      );
  }
}
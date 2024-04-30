import 'package:flutter/material.dart';

void main() => runApp(const MyAppInicio());

class MyAppInicio extends StatelessWidget {
  const MyAppInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inicio Sesión'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
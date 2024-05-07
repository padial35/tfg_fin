import 'package:flutter/material.dart';

void main() => runApp(MyApp(key: UniqueKey())); 

class MyApp extends StatelessWidget {
  final Key key; // 

  MyApp({required this.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Items',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Items'),
        ),
        body: const Center(
          child: Text('Items'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(200, 123, 123, 1), 
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Compras',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud), label: 'Datos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Ajustes',
            ),
          ],
        ),
      ),
    );
  }
}

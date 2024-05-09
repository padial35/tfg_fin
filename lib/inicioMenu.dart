import 'package:flutter/material.dart';

void main() => runApp(MyApp(key: UniqueKey())); 

class MyApp extends StatelessWidget {
  final Key key;

  MyApp({required this.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
        ),
        body: const Center(
          child: Text('Inicio'),
        ),
  
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor:Color(0xFFC7BE00),
          unselectedItemColor: Colors.grey,
          items: [  
            BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Inicio',
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

import 'package:flutter/material.dart';
import 'alimentos.dart'; // Importa la página de alimentos.dart

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: InicioMenu(), // Utiliza el widget InicioMenu
    );
  }
}

class InicioMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Inicio',
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                color: Color.fromARGB(255, 20, 104, 188),
                fontSize: 50,
              ),
            ),
            Text(
              'The Gourmet Shake"',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 161, 210),
                fontSize: 20,
                fontFamily: 'PlayfairDisplay',
              ),
            ),
          ],
        ),
        toolbarHeight: 150,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: Colors.blue[400],
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[300],
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    AlimentosGridPage(), // Navega hacia alimentos.dart
                              ),
                            );
                          },
                          child: Text("Almacen"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Otros botones de la cuadrícula...
          ],
        ),
      ),
    );
  }
}
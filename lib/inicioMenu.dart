import 'package:flutter/material.dart';

void main() => runApp(MyApp(key: UniqueKey()));

class MyApp extends StatefulWidget {
  final Key key;

  MyApp({required this.key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pagina = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              
              ElevatedButton(
                
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Volver'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acción para el segundo botón
                },
                child: Text('Botón 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acción para el tercer botón
                },
                child: Text('Botón 3'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acción para el cuarto botón
                },
                child: Text('Botón 4'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Theme(
         
          data: Theme.of(context).copyWith(
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              unselectedItemColor: Colors.blue[300], 
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: pagina,
            onTap: (newIndex) {
              setState(() {
                pagina = newIndex;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Inicio',
                activeIcon: Icon(Icons.settings, color: Colors.blue[700]),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Compras',
                activeIcon: Icon(Icons.settings, color: Colors.blue[700]),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.cloud),
                label: 'Datos',
                activeIcon: Icon(Icons.settings, color: Colors.blue[700]),
                
              ),
              BottomNavigationBarItem(

                icon: Icon(Icons.settings),
                label: 'Ajustes',
                activeIcon: Icon(Icons.settings, color: Colors.blue[700]) ,
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}

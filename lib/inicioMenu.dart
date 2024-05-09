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
                  // Acción
                },
                child: Text('Botón 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acción 
                },
                child: Text('Botón 3'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acción
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
                label: ' ',
                activeIcon: Icon(Icons.home, color: Colors.blue[700]),//el icono cambia cuando pulso
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.store),
                label:' ',
                activeIcon: Icon(Icons.store, color: Colors.blue[700]),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant),
                label: ' ',
                activeIcon: Icon(Icons.restaurant, color: Colors.blue[700]),          
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_shipping),
                label: ' ',
                activeIcon: Icon(Icons.local_shipping, color: Colors.blue[700]) ,
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '  ',
                activeIcon: Icon(Icons.person, color: Colors.blue[700]) ,
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}

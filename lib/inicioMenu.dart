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
          title: const Text(
            'Inicio',
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              color: Color.fromARGB(255, 20, 104, 188),
              fontSize: 50,
            ),
          ),
          toolbarHeight: 100,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                color: Colors.blue[300],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[400],
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text("Almacen"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.blue[300],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[400],
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text("Platos"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.blue[300],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[400],
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text("Empleados"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.blue[300],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[400],
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text("Proveedores"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Colors.grey),
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
                icon: Icon(Icons.home, color: Colors.blue[300]),
                label: ' ',
                activeIcon: Icon(Icons.home, color: Colors.blue[700]),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.store, color: Colors.blue[300]),
                label: ' ',
                activeIcon: Icon(Icons.store, color: Colors.blue[700]),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant, color: Colors.blue[300]),
                label: ' ',
                activeIcon: Icon(Icons.restaurant, color: Colors.blue[700]),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_shipping, color: Colors.blue[300]),
                label: ' ',
                activeIcon: Icon(Icons.local_shipping, color: Colors.blue[700]),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.blue[300]),
                label: ' ',
                activeIcon: Icon(Icons.person, color: Colors.blue[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

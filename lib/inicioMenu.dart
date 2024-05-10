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
                  fontFamily: 'PlayfairDisplay'
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
                color: Colors.blue[400],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[300],
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
      ),
    );
  }
}

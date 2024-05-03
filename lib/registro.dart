import 'package:flutter/material.dart';
import 'package:tfg/main.dart';

void main() => runApp(const Registro());

class Registro extends StatelessWidget {
  const Registro({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registro de Usuarios',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Registro de Usuarios',
            style: TextStyle(
              fontFamily: "PlayfairDisplay",
              fontSize: 28,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldNombre(),
              TextFieldCorreo(),
              TextFieldContrasena(),
              TextFieldTelef(),
              TextFieldCpos(),
              SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Guardar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  backgroundColor: Color.fromARGB(255, 204, 167, 1),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp())); // Utiliza Navigator.pop para volver a la pantalla anterior
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Volver',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  backgroundColor: Color.fromARGB(255, 204, 167, 1),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class TextFieldNombre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40.0,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_outline),
          labelText: "Nombre",
        ),
      ),
    );
  }
}

class TextFieldCorreo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40.0,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_outline),
          labelText: "Correo Electronico",
        ),
      ),
    );
  }
}

class TextFieldContrasena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40.0,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_outline),
          labelText: "Contraseña",
        ),
      ),
    );
  }
}

class TextFieldTelef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40.0,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_outline),
          labelText: "Telefono",
        ),
      ),
    );
  }
}

class TextFieldCpos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40.0,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_outline),
          labelText: "Codigo postal",
        ),
      ),
    );
  }
}

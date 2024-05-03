import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          title: const Text('Registro de Usuarios'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TextFieldNombre(),
            TextFieldCorreo(),
            TextFieldContrasena(),
            TextFieldTelef(),
            TextFieldCpos(),
          ],
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




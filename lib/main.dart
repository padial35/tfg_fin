import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tfg/firebase_options.dart';
import 'package:tfg/registro.dart';
import 'package:tfg/inicioSesion.dart';
import 'package:tfg/inicioSesion.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}




void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TFG',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Image.asset('assets/logo.jpg'),
              ),

            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyAppInicio()),
                    );
                  },
                  child: Text(
                    'Inicio de Sesión',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 204, 167, 1),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),

              SizedBox(height: 10),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Correo Electrónico',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),

                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                obscureText: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Obtener el contexto adecuado para la navegación
                  final NavigatorState navigator = Navigator.of(context);
                  // Navegar a la ventana "Inicio Sesion" cuando se presiona el botón
                  navigator.push(MaterialPageRoute(builder: (context) => MyAppInicio()));
                },
                child: Text('Iniciar Sesión'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 113, 185, 244),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
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

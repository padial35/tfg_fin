import 'package:flutter/material.dart';
import 'package:tfg/NavBar.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text(
            'Items',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          centerTitle: true,
        ),
        body: AlimentosGrid(), // Utiliza el widget AlimentosGrid
      ),
    ));

/* 

Ejemplo de la lógica a seguir en el BACK para conectar con BBDD.

Modelo de datos:

class Alimento {
  final String id;
  final String titulo;
  final String imageUrl;

  Alimento({
    required this.id,
    required this.titulo,
    required this.imageUrl,
  });
}

Future<List<Alimento>> getAlimentosFromFirebase() async {
  // Lógica para recuperar datos de Firebase
}

*/

class AlimentosGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1,
        
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            // Acción a realizar cuando se hace clic en la caja de alimento
            print('Caja de alimentos clicleada');
          },
          child: Container(
            decoration: index == 0
                ? BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://ianvalentino.com/material/Verduras.png'),
                      fit: BoxFit.fitWidth,
                    ),
                    border: Border.symmetric(horizontal: BorderSide(color: Colors.black.withOpacity(0.5)), vertical: BorderSide(color: Colors.black.withOpacity(0.5)))
                    
                  )
                  
                : null, // Primera caja para ejemplo (Verduras)
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .end, 
              children: [
                Container(
                  color: Colors.white,
                  
                  padding: EdgeInsets.fromLTRB(
                      70, 8, 70, 20), // Padding left: 8, right: 8, bottom: 16
                  child: Text(
                    'Tipo de Alimento ${index + 1}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

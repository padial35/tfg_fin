import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: AlimentosGridPage(), // Utiliza el widget AlimentosGridPage
    ));

class AlimentosGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ITEMS',
          style: TextStyle(
            fontSize: 40,
            letterSpacing: 1,
            fontWeight: FontWeight.w300,
          ),
        ),
        centerTitle: true,
      ),
      body: AlimentosGrid(), // Utiliza el widget AlimentosGrid
    );
  }
}

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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    AlimentosDetallePage(), // Navega a la página de detalles
              ),
            );
          },
          child: Container(
            decoration: index == 0
                ? BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://ianvalentino.com/material/Verduras.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  )
                : null, // Primera caja para ejemplo (Verduras)
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
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

class AlimentosDetallePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del Alimento'),
      ),
      body: Center(
        child: Text('Contenido del detalle del alimento'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          /* Lógica para que aparezca el nombre y el email del usuario logeado */
          UserAccountsDrawerHeader(
            accountName: Text('Nombre de Usuario'),
            accountEmail: Text('email@del.usuario'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  /* Lógica para que aparezca la foto de perfil del usuario logeado */
                  'https://ianvalentino.com/material/EAZY.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://ianvalentino.com/material/fondo-menu-lateral-app.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.restaurant_sharp),
            /* Lógica al hacer click en cada botón del menú */
            title: Text('Restaurante'),
            onTap: () => print('Acción al hacer click en Restaurante'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.store_mall_directory),
            title: Text('Almacén'),
            onTap: () => print('Acción al hacer click en Almacén'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Personal'),
            onTap: () => print('Acción al hacer click en Camareros'),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text('Carta'),
            onTap: () => print('Acción al hacer click en Carta'),
          ),
        ],
      ),
    );
  }
}

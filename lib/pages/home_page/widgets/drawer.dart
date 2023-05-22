import 'package:flutter/material.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({super.key});

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  Color colorTheme = Colors.black54;
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    Color color = const Color.fromRGBO(217, 4, 41, 1);
    return SafeArea(
      bottom: false,
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          physics: const ClampingScrollPhysics(),
          //padding: EdgeInsets.,
          children: <Widget>[
            SafeArea(
              left: false,
              child: SizedBox(
                height: 160,
                child: Container(
                  color: color,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(
                        radius: 55.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Jim Huertas', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                          const SizedBox(height: 10),
                          GestureDetector(
                            child: const Text('Configurar Perfil', style: TextStyle(color: Colors.white)),
                            onTap: (){
                              print('al perfil ga');
                            },
                          )
                      ]),
                      const SizedBox(width: 30)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(0),
              child: _listTileDrawer(
                Icons.home_outlined,
                'Inicio',
                true
              ),
            ),
            Container(
              padding: const EdgeInsets.all(0),
              child: _listTileDrawer(
                Icons.search,
                'Buscar',
                true
              ),
            ),
            Container(
              height: 5,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: const Divider(color: Colors.grey)
            ),
            _listTileDrawer(
              Icons.account_circle_outlined, 
              'Mi cuenta',
              false,
            ),
            _listTileDrawer(
              Icons.favorite_outline, 
              'Favoritos',
              false
            ),
            _listTileDrawer(
              Icons.calendar_today, 
              'Mis reservas',
              false
            ),
            _listTileDrawer(
              Icons.forum_outlined, 
              'Mis cotizaciones',
              false
            ),
            Container(
              height: 5,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: const Divider(color: Colors.grey)
            ),
            _listTileDrawer(
              Icons.settings_outlined, 
              'Configuración',
              false
            ),
            _listTileDrawer(
              Icons.sentiment_satisfied_alt_outlined, 
              'Servicio al Cliente',
              false
            ),
            _listTileDrawer(
              Icons.help_outline, 
              'Acerca de y comentarios',
              false
            ),
            _listTileDrawer(
              Icons.logout_outlined, 
              'Cerrar Sesión',
              false
            ),
            const SizedBox(height: 25)
          ],
        ),
      ),
    );
  }

  _listTileDrawer(IconData icon, String title, bool selected) {
    return ListTile(
      selected: selected,
      selectedColor: Colors.blue, 
      title: Text(
        title, 
        style: TextStyle(
          fontFamily: 'Arial',
          color: (isActive) ? Colors.blue : Colors.black87,
          fontSize: 15.0)
        ),
      leading: Icon(icon, color: Colors.black54),
      dense: true,
      visualDensity: const VisualDensity(horizontal: -4),
      //visualDensity: const VisualDensity(vertical: -2),
      onTap: (){},
    );
  }
}
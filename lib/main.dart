import 'package:flutter/material.dart'; //Se importa ya que aqui se encuentra todos los widges

void main() => runApp(MiApp()); //Estructura de la funcion main, y va a ejecutar el runApp, ejecuta el primer widget de la app

class MiApp extends StatelessWidget { //Creamos el widget
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Material es un patron de diseño de google
      title: "Mi App",
      home: Inicio(),
    ); 
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

@override
void initState() {
  super.initState();
  // Implement some initialization operations here.
}

  @override
  Widget build(BuildContext context) { //aqui se dice que contiene el widget
//     return Scaffold( // nos pide el appbar
//       appBar: AppBar(
//         title: Text("Mi App"), //texto que se mostrara en el titulo del appBar
//       ), 
//       body: Center(child: Text("Contenido"),),
//     );
//   }
// }

void _showAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alerta'),
        content: Text('¡221201 Nancy Guadalupe Jimenez Escobar,\n 221193 Francisco de Jesus Escobar Gutierrez,\n 203140 Edrei Alvarez Hernandez!'),
        actions: <Widget>[
          TextButton(
            child: Text('Cerrar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


return Scaffold(
  // AppBar
    appBar: AppBar(
      title: Text("AppBar Example"),
      backgroundColor: Colors.blueAccent,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Acción al presionar el botón
          },
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {
            _showAlert(context); // Llama a la función para mostrar la alerta
          },
        ),
      ],
    ),
  body: Center(
    child: Text("This is the body of the Scaffold"),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      // Acción que ejecutará el botón flotante
    },
    child: Icon(Icons.add),
  ),
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: 0, // Índice de la pestaña seleccionada
    onTap: (int index) {
      // Cambia la pantalla según el índice seleccionado
    },
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// DefaultTabController

// return DefaultTabController(
//   length: 3,
//   child: Scaffold(
//     // AppBar con TabBar
//     appBar: AppBar(
//       bottom: TabBar(
//         tabs: [
//           Tab(icon: Icon(Icons.home), text: "Home"),
//           Tab(icon: Icon(Icons.settings), text: "Settings"),
//           Tab(icon: Icon(Icons.person), text: "Profile"),
//         ],
//       ),
//       title: Text('TabBar Example'),
//       backgroundColor: Colors.blueAccent,
//       actions: <Widget>[
//         IconButton(
//           icon: Icon(Icons.search),
//           onPressed: () {
//             // Acción al presionar el botón
//           },
//         ),
//         IconButton(
//           icon: Icon(Icons.more_vert),
//           onPressed: () {
//             // Acción al presionar el botón
//           },
//         ),
//       ],
//     ),
    
//     // TabBarView para el contenido de cada pestaña
//     body: TabBarView(
//       children: [
//         Center(child: Text("Home View")),
//         Center(child: Text("Settings View")),
//         Center(child: Text("Profile View")),
//       ],
//     ),
    
//     // Comentar el floatingActionButton si no lo necesitas
//     floatingActionButton: FloatingActionButton(
//       onPressed: () {
//         // Acción que ejecutará el botón flotante
//       },
//       child: Icon(Icons.add),
//     ),
//     ),
//   );
//   }
// }
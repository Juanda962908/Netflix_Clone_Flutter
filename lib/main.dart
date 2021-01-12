/* Importamos librería que permite urilizar widgets */
import 'package:flutter/material.dart'; // siempre se debe importar esta
import 'package:clone_netflix/paginas/inicio.dart';
//------------------------------------------------------------------------------
/* Se crea función main que que será el punto de entrada 
 */

void main() {
  /* Se crea función principal que ejecuta la aplicación,dicha función
  recibe un parámetro, el cual es un widgets. Un widget en flutter
  es una clase
    */

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Se debe escribir el comando build para autocompletar la estructura de un widget

  @override

  // el widget acontnuación que se dibuja en pantalla cuando se use MyAPP
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: pantalla que se va a mostrar como inicio
      // Scaffold: widget, como su nombre lo dice es un andamio
      home: IncioPage(),
    );
  }
}

/* Importamos librería que permite urilizar widgets */
import 'package:clone_netflix/componentes/navbar_Superior.dart';
import 'package:flutter/material.dart';

/**Clase principal*/

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      /**Widget principal donde se encontrán las secciones de esta vista
       * 
       */
      children: [cabecera(), infoSerie(), botonera()],
    );
  }

  //-------------------------------------------------------------------------------------------
  /**Función en donde va a estar todo el contenido de la cabecera
   * 
   */

  Widget cabecera() {
    /*Stack del cartel principal donde está contenido el navbar 
        y de fondo está la imágen de elite*/

    // en el return debemos definir siemore en que dirección va estar el contenido
    return Stack(
      // child que contiene de background la imagen de fondo y el menú
      children: [
        Image.network(
            'https://www.ecestaticos.com/image/clipping/319ef328ce0df1c0dbd4e9b6d9a7836e/los-actores-de-elite-responden-ante-su-salida-de-la-serie-tras-la-tercera-temporada.jpg',
            height: 350,
            fit: BoxFit.cover),

        // Contenedor que le aplica degradado a la sección inicial de la aplicación
        Container(
            width: double.infinity, // decimos que ocupe todo el ancho
            height: 350,
            decoration: BoxDecoration(
                // decoration: propiedad para aplicar degradado
                gradient: LinearGradient(
                    begin: Alignment
                        .center, // se indica de donde comienza el degradado
                    end: Alignment
                        .bottomCenter, // se indica donde termina el degradado
                    colors: <Color>[Colors.black38, Colors.black]))),

        /**Widget  saveArea para poder ajustar la posición del menú */
        SafeArea(child: NavBarSuperior())
      ],
    );
  }

  //-------------------------------------------------------------------------------------------
  /** Widget que se encarga de mostrar la información recomendada
   * 
   */
  Widget infoSerie() {
    // en el return debemos definir siemore en que dirección va estar el contenido
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Telenovelesco',
            style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5,
        ),
        Text('Suspenso insostenible',
            style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5,
        ),
        Text('De suspenso',
            style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5,
        ),
        Text('Adolescentes',
            style: TextStyle(color: Colors.white, fontSize: 10.0))
      ],
    );
  }

  //-------------------------------------------------------------------------------------------
  /**
   * 
   */

  Widget botonera() {
    // en el return debemos definir siemore en que dirección va estar el contenido
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      // Dentro de children van los objetos que iran en fila
      children: [
        //Icono del check

        Column(
          children: [
            Icon(
              Icons.check,
              color: Colors.white,
            ),
            Text(
              "Mi lista",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),

            // Esto es un margin, de acuerdo si hemos definido row o column
            SizedBox(
              height: 3.0,
            )
          ],
        ),

        //Botón para reproducir
        FlatButton.icon(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(Icons.play_arrow, color: Colors.black),
            label: Text("Reproducir")),

        //Icono del info
        Column(
          children: [
            Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            Text(
              "Información",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),

            // Esto es un margin, de acuerdo si hemos definido row o column
            SizedBox(
              height: 3.0,
            )
          ],
        )
      ],
    );
  }
}

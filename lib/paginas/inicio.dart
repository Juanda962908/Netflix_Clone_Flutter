/* Importamos librería que permite urilizar widgets */

import 'package:clone_netflix/componentes/cartel_principal.dart';
import 'package:clone_netflix/componentes/item_redondeado.dart';
import 'package:clone_netflix/componentes/items_img.dart';
import 'package:flutter/material.dart';

class IncioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
/**Scaffold es una clase la cual provee algunas widgets que se pueden APIS, como
 * Drawers,SnackBar,BottonNavigation.
 * 
 * Para entender mejor que es Scaffold, se puede ver como una especie de andamio o esqueleto
 *  en donde se almacenan todas las partes de la aplicación
 */
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            CartelPrincipal(),
            SizedBox(
              height: 15,
            ),
            this.listaHorizontal('Avances', ItemRedondeado(), 9),
            SizedBox(
              height: 15,
            ),
            this.listaHorizontal('Programas de acción', ItemImg(), 5),
            SizedBox(
              height: 15,
            ),
            this.listaHorizontal('Tendencias', ItemImg(), 5),
            SizedBox(
              height: 15,
            ),
            this.listaHorizontal('Mi lista', ItemImg(), 5),
            SizedBox(
              height: 30,
            )
          ],
        ),
        bottomNavigationBar: this.navInferior());
  }

  //------------------------------------------------------------------------------
/** Menú de navegación inferior
 * 
 */

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Inicio")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Buscar")),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), title: Text("Proximamente")),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_downward), title: Text("Descargas")),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz), title: Text("Más")),
        ]);
  }

//------------------------------------------------------------------------------
/**Lista donde se visualizan los elemetos horizontalmente
 * 
 */
  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      // para alinear horizontalmente
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(6),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          height: 110,

          /**Los item redondeados deben ir en una fila, sin embargo no se puede usar
               * la propiedad Row debido a que se solapan los item redondeados a los extremos,
               * para evitar eso se utiliza ListView o ListView.builder que lo que hace es generar una lista que se 
               * acomoda de manera automática mientras se hace scroll
               */
          child: ListView.builder(
            scrollDirection: Axis.horizontal,

            // Item Builder es una función que me permite colocar elementos de
            // manera infinita en la pantalla
            // si no se define la variable itemCount. colocará infinitos elementos

            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        )
      ],
    );
  }
}

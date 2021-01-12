/* Importamos librería que permite urilizar widgets */
import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(
            'assets/imgs/netflix.png',
            width: 50,
            height: 50,
          ),
          Text(
            "Programas",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          Text(
            "Peliculas",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          Text(
            "Mi lista",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          )
        ]);
  }
}

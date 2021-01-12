import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            // Todo lo que esté dentro del contenedor será um hijo
            Container(
              height: 110,
              width: 110,
              // Definimos la decoración del contenedor
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  border: Border.all(color: Colors.yellow, width: 2.0)),
              // Redondeamos la imágen
              child: ClipOval(
                child: Image.network(
                    'https://www.cronista.com/__export/1594907280728/sites/diarioelcronista/img/2020/07/16/dark.jpg',
                    fit: BoxFit
                        .cover), // para que la imágen cubra todo el contenedor,

                // para que la imágen cubra todo el contenedor,
              ),
            ),

            /*     Image.network(
          "https://static.wikia.nocookie.net/dark-netflix/images/f/fd/Dark_Title_Screen.jpg/revision/latest?cb=20171111233324",
          width: 100,
        ) */
          ],
        ),

        // sized box es una funciuón que permite dar espaciado a lo alto y ancho entre elementos
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}

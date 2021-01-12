import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://www.tonica.la/__export/1589999061515/sites/debate/img/2020/05/20/the-flash-portada.jpg_1902800913.jpg",
          width: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}

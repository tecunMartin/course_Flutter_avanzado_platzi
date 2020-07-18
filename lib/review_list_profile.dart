import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/imagenes_fondo.dart';

class ReviewListProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ImageFondo(pathI: "assets/img/beach.jpeg",titleI: "Knuckles Mountains Range",descripcionI: "Hiking Water tall hunting, Natural bath, Scenenery & Photography",stepsI: "100,450,400",),
        ImageFondo(pathI: "assets/img/dog.jpg",titleI: "Knuckles Mountains Range",descripcionI: "Hiking Water tall hunting, Natural bath, Scenenery & Photography",stepsI: "100,450,400",),
        ImageFondo(pathI: "assets/img/mountain.jpeg",titleI: "Knuckles Mountains Range",descripcionI: "Hiking Water tall hunting, Natural bath, Scenenery & Photography",stepsI: "100,450,400",),
      ],
    );
  }
}




import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/imagen_fondo_perfil.dart';
import 'package:platzi_tripss_app/tarjeta_datos_perfil.dart';

class ImageFondo extends StatelessWidget {
  String pathI = "assets/img/dog.jpg";
  String titleI = "Knuckles Mountains Range";
  String stepsI = "123,123,123";
  String descripcionI = "Hiking Water tall hunting, Natural bath, Scenenery & Photography";

  ImageFondo({this.pathI,this.titleI,this.descripcionI,this.stepsI});

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(
          top:10,
        ),
        child: Stack(
          children: <Widget>[
            ImagenFondoPerfil(path: pathI,),
            TarjetaDatosPerfil(title: titleI,steps: stepsI ,descripcion: descripcionI,),
          ],
        ),
      );
  }
}
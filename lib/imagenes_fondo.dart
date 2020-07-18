import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/tarjeta_datos_perfil.dart';

class ImageFondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imgFondo= Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/beach.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
    );

      return TarjetaPerfil();

  }
}




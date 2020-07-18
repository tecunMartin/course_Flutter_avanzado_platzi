import 'package:flutter/material.dart';

class ImagenFondoPerfil extends StatelessWidget {

  String path = "assets/img/beach.jpeg";
  ImagenFondoPerfil({this.path});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 250,
      width: 340,
      margin: EdgeInsets.only(
        left: 10,
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(path)
        ),
      ),
    );
  }
}






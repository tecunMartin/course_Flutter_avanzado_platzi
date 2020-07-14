import 'package:flutter/material.dart';


class FloatingActionButtonGreen extends StatefulWidget {
  @override
  _FloatingActionButtonGreenState createState() => _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {

  IconData cambiarIcon = Icons.favorite_border;

void _onPressedFav(){
  if(cambiarIcon == Icons.favorite_border){
    _textoSnack("Agregaste a tus favoritos");
    cambiarIcon = Icons.favorite;
  }else{
    _textoSnack("Desechado de favoritos");
    cambiarIcon = Icons.favorite_border;
  }
  setState((){});
}

void _textoSnack(String contenido){
  Scaffold.of(context).showSnackBar(
    SnackBar(
      content: Text(contenido),
      duration: Duration(seconds: 1),
    )
  );
}

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "FAV",
      child: Icon(cambiarIcon),
      onPressed: _onPressedFav,
    );
  }
}


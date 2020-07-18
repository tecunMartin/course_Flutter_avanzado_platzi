import 'package:flutter/material.dart';

  String title = "Knuckles Mountains Range";
  String descripcion ="Hiking Water tall hunting, Natural bath, Scenenery & Photography";
  String steps = "123,123,123";

class TarjetaPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(
      top: 275       
    ),
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title,
          style: TextStyle(
            fontFamily: "Lato",
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
        ),
        Container(
          width: 175,
          child: Text(descripcion,
            style: TextStyle(
              color: Colors.black38,
              fontFamily: "Lato",
              fontSize: 12,
            ),
          ), 
        ),
        Text("Steps  $steps",
        style: TextStyle(
          color:Colors.orange,
        ),),
      ],
    ),
  );
  }
}
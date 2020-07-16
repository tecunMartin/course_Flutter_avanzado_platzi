import 'package:flutter/material.dart';

class DatosUser extends StatelessWidget {
  
  String userName = "Pathum Tzoo";
  String email = "pathumtzoo1@gmail.com";
  String pathImage = "assets/img/people.jpg";

  DatosUser({this.email,this.userName,this.pathImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.only(
        top: 90,
        left: 35,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _imagenPerfil(),
          _datosPerfil(),
        ],
      ),
    );
  }

  Widget _datosPerfil(){
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(userName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Lato",
            ),
          ),
          Text(email,
            style: TextStyle(
              color: Colors.white24,
              fontSize: 15,
              fontFamily: "Lato",
            ),
          ),
      ],
    ),
        );

  }

  Widget _imagenPerfil(){
    return Container(
      width: 80,
      height: 80,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        )
      ),

    );
  }
}
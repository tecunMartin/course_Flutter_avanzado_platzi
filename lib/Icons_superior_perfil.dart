import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/datos_user.dart';


class SuperiorIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget iconsBig = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: FloatingActionButton(
        onPressed: (){},
        tooltip: "Add",
        backgroundColor: Colors.white,
        child: Icon(Icons.add,
          color: Color(0xFF4268D3),
          size: 50.0,
        ),
      ),
    );
    
    Widget ordenIcons = Container(
      margin: EdgeInsets.only(
        top: 5,
        right: 5,
        left: 5,
        bottom: 5
      ),
      child: Row(
        children: <Widget>[
          iconsMini(Icons.bookmark_border),
          iconsMini(Icons.computer),
          iconsBig,
          iconsMini(Icons.email),
          iconsMini(Icons.person_outline),
        ],
      ),
    );

    return Column(
      children: <Widget>[
        DatosUser(userName:"Martín Tecún",email:"charlesmartin781@gmail.com",pathImage: "assets/img/me.jpg"),
        ordenIcons,
      ],
    );
  }
  Color coloresS = Colors.white54;

  Widget iconsMini(IconData icon){
    return Container(
      margin: EdgeInsets.only(
        left: 16,
      ),
      child: FloatingActionButton(
        backgroundColor: coloresS,
        mini: true,
        onPressed: (){},
        child: Icon(icon,
          color: Color(0xFF4268D3),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/floating_action_button_green.dart';


class TarjetaDatosPerfil extends StatelessWidget {
  String title = "Knuckles Mountains Range";
  String descripcion ="Hiking Water tall hunting, Natural bath, Scenenery & Photography";
  String steps = "123,123,123";

  TarjetaDatosPerfil({this.title,this.descripcion,this.steps});


  @override
  Widget build(BuildContext context) {
  return Container(

    alignment: Alignment.center,
    padding: EdgeInsets.only(
      top: 15,
      left: 15,
      right: 20,
    ),
    margin: EdgeInsets.only(
      top: 200,
      left: 30,       
    ),
    width: 290,
    height: 110,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(5, 5),
        )
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Stack(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Text(title,
                style: TextStyle(
                  fontFamily: "Lato",
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              width: 175,
              margin: EdgeInsets.only(bottom: 5),
              child: Text(descripcion,
                style: TextStyle(
                  color: Colors.black38,
                  fontFamily: "Lato",
                  fontSize: 10,
                ),
              ), 
            ),
            Text("Steps  $steps",
            
            style: TextStyle(
              color:Colors.orange,
            ),),
          ],
        ),
        _crearButton(),
      ],
    ),
  );
  }

  Widget _crearButton(){
    return Container(
      margin: EdgeInsets.only(
        left: 220,
        top: 60
      ),
      child:FloatingActionButtonGreen(),  
    );
  }


}
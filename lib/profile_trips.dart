import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/datos_user.dart';
import 'package:platzi_tripss_app/gradient_back.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        
        children: <Widget>[
          FloatingActionButton(onPressed: null),
          GradientBack(title: "Perfil", size: 300.0, ),
          DatosUser(userName:"Pathum Tzoo",email:"pathumtzoo1@gmail.com",pathImage: "assets/img/people.jpg"),
        ],
      ),
    );
  }
}
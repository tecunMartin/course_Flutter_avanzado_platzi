import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/widgets/gradient_back.dart';
import 'dart:io';

class AddPlaceScreen extends StatefulWidget {

  File image;
  AddPlaceScreen({Key key, this.image});

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(height: 300,),
          nameBack(context),
        ],
      ),
    );
  }
}

Widget nameBack(BuildContext context){
  return Row(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(top: 25.0, left:5.0),
        child: SizedBox(
          width: 45.0,
          height: 45.0,
          child: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 45,
            ),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
    ],
  );
}
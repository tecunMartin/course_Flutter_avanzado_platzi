import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/widgets/gradient_back.dart';
import 'package:platzi_tripss_app/widgets/text_input.dart';
import 'dart:io';

import 'package:platzi_tripss_app/widgets/title_header.dart';

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
          _nameBack(context),
          _inputs(),
        ],
      ),
    );
  }
}
Widget _nameBack(BuildContext context){
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

      Flexible(
        child: Container(
          padding: EdgeInsets.only(
            top: 45.0,
            left: 20.0,
            right: 10.0,
          ),
          child: TitleHeader(title: "Add a new Place"),
        ),
      ),
    ],
  );
}

Widget _inputs(){

  final _controllerTitlePlace = TextEditingController();
  final _controllerDescriptionPlace = TextEditingController();

  return Container(
    margin: EdgeInsets.only(
      top: 120.0,
      bottom: 20.0,
    ),
    child: ListView(
      children: <Widget>[
        Container(),//Foto
        Container( //TextField Title
          margin: EdgeInsets.only(bottom: 20.0),
          child: TextInput(
            hintText: "Title", 
            inputType: TextInputType.text, 
            controller: _controllerTitlePlace,
            maxLines: 1,
          ),
        ),
        TextInput(
          hintText: "Description", 
          inputType: TextInputType.multiline, 
          controller: _controllerDescriptionPlace,
          maxLines: 6,
        ),
      ],
    ),
  );


}





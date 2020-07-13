import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
    DescriptionPlace({this.namePlace, this.stars, this.descriptionPlace});

    String namePlace;
    int stars;
    String descriptionPlace;

  @override
  Widget build(BuildContext context){
    final star = Container(
      margin: EdgeInsets.only(
        right: 3.0,
        top: 323.0
      ),
      child: Icon(Icons.star,color: Color(0xFFFf2C611)),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
        right: 3.0,
        top: 323.0
      ),
      child: Icon(Icons.star_half,color: Color(0xFFFf2C611)),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
        right: 3.0,
        top: 323.0
      ),
      child: Icon(Icons.star_border,color: Color(0xFFFf2C611)),
    );
    
    final _title_Start = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0, 
          ),
          child: Text(namePlace,
              style: TextStyle(
                fontSize: 30.00,
                fontFamily: "Lato",
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_border,
          ],
        ),
      ],
    );

    final _textDescripcion = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        top: 20.0,
        right: 20.0
      ),
      child: new Text(descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0, 
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _title_Start,
        _textDescripcion,
        ButtonPurple(buttonText:"Navigate"),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = "assets/img/people.jpg";
  String name;
  String details = "1 review 5 photos";
  String commet = "There is an amazing place in Sri Lanka";
  double sSize = 15.0;

  Review({this.pathImage, this.name, this.commet, this.details});

  @override
  Widget build(BuildContext context){

    final photo = Container(
      margin: EdgeInsets.only(
        top:20.0,
        left:20.0
      ),

      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover,
        )
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),

      child: Text(commet,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7),
        ),
      ),      
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7),
        ),
      ),      
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato",
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    final start = Container(
      margin: EdgeInsets.only(
        bottom: 20.0,
        left: 3.0
      ),
      child: Icon(Icons.star,color: Color(0xFFFf2C611),
        size: sSize,
      ),
    );

    final start_half = Container(
      margin: EdgeInsets.only(
        bottom: 20.0,
        left: 3.0
      ),
      child: Icon(Icons.star_half,color: Color(0xFFFf2C611),
      size: sSize,),
    );

    final start_border = Container(
      margin: EdgeInsets.only(
        bottom: 20.0,
        left: 3.0
      ),
      child: Icon(Icons.star_border,color: Color(0xFFFf2C611),
        size: sSize,
      ),
    );

    final start_list = Row(
      children: <Widget>[
        start,
        start,
        start,
        start_border,
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails,
        start_list,
      ],
    );
  }
}
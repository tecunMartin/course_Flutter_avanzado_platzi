import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/card_imge.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String path = "assets/img/";
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage(pathImage:"${path}beach.jpeg"),
          CardImage(pathImage:"${path}beach_palm.jpeg"),
          CardImage(pathImage:"${path}mountain.jpeg"),
          CardImage(pathImage:"${path}mountain_stars.jpeg"),
          CardImage(pathImage:"${path}sunset.jpeg"),
        ],
      ),
    );


  }
}


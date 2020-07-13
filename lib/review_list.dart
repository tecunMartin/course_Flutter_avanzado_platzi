import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
      Review(pathImage: "assets/img/people.jpg",      name: "Martin Tecun",     commet: "This place is beatiful", details: "1 review . 5 photos",),      
        Review(pathImage: "assets/img/dog.jpg",       name: "Puppy",            commet: "He is a dog amazing",    details: "400 review . 10 photos",),     
        Review(pathImage: "assets/img/franchesco.jpg",name: "Franchesco Vertuli",commet: "He is very very cool",  details: "1000 review . 2 photos",), 
      ],
    );
  }
}
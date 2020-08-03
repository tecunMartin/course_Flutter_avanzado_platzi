import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/Place/model/place.dart';

class User{
  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final List<Place> myPlaces;
  final List<Place> myFavoritePlaces;

/*   myFavoritePlaces
  myPlace */
  User({
    Key key,
    @required this.uid,
    @required this.name,
    @required this.email,
    @required this.photoURL,
    this.myPlaces,
    this.myFavoritePlaces,
  });
}
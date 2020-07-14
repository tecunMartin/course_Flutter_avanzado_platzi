import 'package:flutter/material.dart';

import 'package:platzi_tripss_app/description_place.dart';
import 'package:platzi_tripss_app/header_appbar.dart';
import 'package:platzi_tripss_app/platzi_trips.dart';
import 'package:platzi_tripss_app/review_list.dart';

final _descriptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."; 

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              DescriptionPlace(namePlace: "Guatemala", stars: 4, descriptionPlace: _descriptionDummy,),
              ReviewList(),
            ],
          ),
          HeaderAppBar(),
          /* PlatziTrips(), */
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/gradient_back.dart';
import 'package:platzi_tripss_app/Icons_superior_perfil.dart';
import 'package:platzi_tripss_app/review_list_profile.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(title: "Profile", size: 350.0, heightS: -5,),
          ListView(
            children: <Widget>[
              SuperiorIcons(),
              ReviewListProfile(),
            ],
          ),
        ],
      ),
    );
  }
}
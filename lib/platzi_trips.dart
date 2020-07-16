import 'package:flutter/material.dart';

import 'package:platzi_tripss_app/home_trip.dart';
import 'package:platzi_tripss_app/profile_trips.dart';
import 'package:platzi_tripss_app/search_trips.dart';


class PlatziTrips extends StatefulWidget {
  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  int indextap =0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];

  void onTapTapped(int index){
    setState((){});
    indextap = index;
  }
  
  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: widgetsChildren[indextap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Color(0xFF4268D3),
        ), 
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indextap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("")
            ),
          ]
        )
      ),
    );
  }
}
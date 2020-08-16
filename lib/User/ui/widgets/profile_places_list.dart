import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_tripss_app/Place/model/place.dart';
import 'package:platzi_tripss_app/User/bloc/bloc_user.dart';
import 'package:platzi_tripss_app/User/model/user.dart';
import 'package:platzi_tripss_app/User/ui/widgets/profile_place.dart';

class ProfilePlacesList extends StatelessWidget {
  User user;
  UserBloc userBloc;
  
  ProfilePlacesList({@required this.user});

/*   Place place = new Place('Knuckles Mountains Range', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  Place place2 = new Place('Mountains', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321'); */

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    return Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: StreamBuilder(
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
          switch (snapshot.connectionState) {
            case ConnectionState.waiting: 
            print("Waiting profile_places_list.dart");
              return CircularProgressIndicator();
            break;
            case ConnectionState.done: 
            print("done profile_places_list.dart");
              return Column(
                children: userBloc.buildPlaces(snapshot.data.documents),
              );
            break;
            case ConnectionState.active: 
            print("active profile_places_list.dart");
              return Column(
                children: userBloc.buildPlaces(snapshot.data.documents),
              );
            break;
            case ConnectionState.none: 
            print("none profile_places_list.dart");
              return CircularProgressIndicator();
            break;
            default:
              return Column(
                children: userBloc.buildPlaces(snapshot.data.documents),
              );
            break;
          }
        },
        stream: userBloc.myPlacesListStream(user.uid),
      ),
    );
  }
}
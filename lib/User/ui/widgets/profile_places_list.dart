import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_tripss_app/Place/model/place.dart';
import 'package:platzi_tripss_app/User/bloc/bloc_user.dart';
import 'package:platzi_tripss_app/User/ui/widgets/profile_place.dart';

class ProfilePlacesList extends StatelessWidget {

/*   Place place = new Place('Knuckles Mountains Range', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  Place place2 = new Place('Mountains', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321'); */

Place place = Place(
  name: 'Knuckles Mountains Range', 
  description: 'Hiking. Water fall hunting. Natural bath', 
  urlImage: 'https://images.unsplash.com/photo-1519681393784-d120267933ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80', 
  likes: 3,
);
Place place2 = Place(
  name: 'Mountains', 
  description: 'Hiking. Water fall hunting. Natural bath', 
  urlImage: 'https://images.unsplash.com/photo-1519681393784-d120267933ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80' , 
  likes: 10,
);

  UserBloc userBloc;

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
              return CircularProgressIndicator();
            break;
            case ConnectionState.done: 
              return Column(
                children: userBloc.buildPlaces(snapshot.data.documents),
              );
            break;
            case ConnectionState.active: 
              return Column(
                children: userBloc.buildPlaces(snapshot.data.documents),
              );
            break;
            case ConnectionState.none: 
              return CircularProgressIndicator();
            break;
            default:
              return Column(
                children: userBloc.buildPlaces(snapshot.data.documents),
              );
            break;
          }
        },
        stream: userBloc.placesStream,
      ),
    );
  }

/*   Column(
        children: <Widget>[
          ProfilePlace(place),
          ProfilePlace(place2),
        ],
      ), */

}
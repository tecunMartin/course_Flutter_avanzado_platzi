import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_tripss_app/User/bloc/bloc_user.dart';
import 'package:platzi_tripss_app/User/model/user.dart';
import 'package:platzi_tripss_app/User/ui/Screens/profile_header.dart';
import 'package:platzi_tripss_app/User/ui/widgets/profile_background.dart';
import 'package:platzi_tripss_app/User/ui/widgets/profile_places_list.dart';

class ProfileTrips extends StatelessWidget {

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch(snapshot.connectionState){
          case ConnectionState.none:
          print("none profile_trips.dart");
            return CircularProgressIndicator();
          break;
          case ConnectionState.waiting:
          print("Waiting profile_trips.dart");
            return CircularProgressIndicator();
          break;
          case ConnectionState.active:
          print("Active profile_trips.dart");
            return showProfileData(snapshot);
          break;
          case ConnectionState.done:
          print("done profile_trips.dart");
            return showProfileData(snapshot);
          break;
          default:
            return showProfileData(snapshot);
          break;
        }
      },
    );
}
Widget showProfileData(AsyncSnapshot snapshot){
  if(!snapshot.hasData || snapshot.hasError){
    print("Usuario no logeado");
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            Text("Usuario no logeado. Haz login")
          ],
        ),
      ],
    );
  }else{
    print("Logeado");
    var user = User(
      uid: snapshot.data.uid, 
      name: snapshot.data.displayName, 
      email: snapshot.data.email, 
      photoURL: snapshot.data.photoUrl,
    );
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            ProfileHeader(user: user,),//User datos
            ProfilePlacesList(user: user,)//User uid
          ],
        ),
      ],
    );
  }
}
}
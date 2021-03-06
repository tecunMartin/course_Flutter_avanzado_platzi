import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_tripss_app/User/bloc/bloc_user.dart';
import 'package:platzi_tripss_app/User/model/user.dart';
import 'package:platzi_tripss_app/platzi_trips_cupertino.dart';
import 'package:platzi_tripss_app/widgets/button_green.dart';
import 'package:platzi_tripss_app/widgets/gradient_back.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  UserBloc userBloc; 
  double sceneWidget;
  @override
  Widget build(BuildContext context){
    double sceneWidget = MediaQuery.of(context).size.width;

    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

Widget _handleCurrentSession(){
  return StreamBuilder(
    stream: userBloc.authStatus,
    builder: (BuildContext context, AsyncSnapshot snapshot){
      //Snapshot contiene los datos - Object User
      if(!snapshot.hasData || snapshot.hasError){
        return signInGoogleUI(); 
      }else{
        return PlatziTripsCupertino();
      }
    },
  );
}

Widget signInGoogleUI(){
  return Scaffold(
    body: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        GradientBack(height: null,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Container(
                width: sceneWidget,
                child:Text("Welcome\nThis is your Travel App",
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 33.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                textWidthBasis: TextWidthBasis.longestLine,
              ),
              )
            ),
            ButtonGreen(
            text: "Login with Gmail", 
            onPressed: (){
              userBloc.signOut();
              userBloc.signIn().then((FirebaseUser user) => {
                userBloc.updateUserDatastore(User(
                  uid: user.uid, 
                  name: user.displayName, 
                  email: user.email, 
                  photoURL: user.photoUrl,
                )),
              });
            },
            height: 50.0,
            width: 300.0,
            )
          ],
        ),
      ],
    ),
  );
}
}






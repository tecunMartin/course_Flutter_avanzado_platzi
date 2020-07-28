import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_tripss_app/User/bloc/bloc_user.dart';
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
  @override
  Widget build(BuildContext context){
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

Widget _handleCurrentSession(){
  return StreamBuilder(
    stream: userBloc.authStatus,
    builder: (BuildContext context, AsyncSnapshot snapshot){
      //Snapshot contiene los datos - Object User
      if(snapshot.hasData || snapshot.hasError){
        return PlatziTripsCupertino();
      }else{
        return signInGoogleUI();
      }
    },
  );
}


Widget signInGoogleUI(){
  return Scaffold(
    body: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        GradientBack(title:"",height: null,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome\nThis is your Travel App",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 33.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textWidthBasis: TextWidthBasis.longestLine,
            ),
            ButtonGreen(
            text: "Login with Gmail", 
            onPressed: (){
              userBloc.signIn().then((FirebaseUser user) => print("El usuario es ${user.displayName}"));
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






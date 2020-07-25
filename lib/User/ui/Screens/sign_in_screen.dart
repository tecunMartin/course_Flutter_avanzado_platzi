import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/widgets/button_green.dart';
import 'package:platzi_tripss_app/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
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
            onPressed: null,
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






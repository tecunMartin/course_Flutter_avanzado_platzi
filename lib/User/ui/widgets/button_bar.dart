import 'dart:io';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_tripss_app/Place/ui/Screens/add_place_screen.dart';
import 'package:platzi_tripss_app/User/bloc/bloc_user.dart';
import 'package:platzi_tripss_app/User/ui/widgets/circle_button.dart';

class ButtonsBar extends StatelessWidget {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);

    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 10.0
        ),
        child: Row(
          children: <Widget>[
            //Cambiar la contraseña.
            CircleButton(mini:true, icon: Icons.vpn_key,     iconSize: 20.0,color:Color.fromRGBO(255, 255, 255, 0.6),
              onpressed: ()=>{},
            ),
            //Añadiremos un nuevo lugar.
            CircleButton(mini:true, icon: Icons.add,         iconSize: 40.0,color:Color.fromRGBO(255, 255, 255, 1),  
              onpressed:(){
                File image;
                Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=>AddPlaceScreen(image: image,)),
                );
              },),
            //Cerrar secion
            CircleButton(mini:true, icon: Icons.exit_to_app, iconSize:20.0, color:Color.fromRGBO(255, 255, 255, 0.6), 
              onpressed: ()=>{
                userBloc.signOut(),
            },),
          ],
        )
    );
  }

}
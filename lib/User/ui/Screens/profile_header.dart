import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_tripss_app/User/bloc/bloc_user.dart';
import 'package:platzi_tripss_app/User/model/user.dart';

import 'package:platzi_tripss_app/User/ui/widgets/button_bar.dart';
import 'package:platzi_tripss_app/User/ui/widgets/user_info.dart';

class ProfileHeader extends StatelessWidget {
  UserBloc userBloc;
  User user;

  ProfileHeader({@required this.user});

  @override
  Widget build(BuildContext context){
    return showProfileData();
    userBloc = BlocProvider.of<UserBloc>(context);
    
  }
final title = Text(
  'Profile',
  style: TextStyle(
    fontFamily: 'Lato',
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30.0
  ),
);

Widget showProfileData(){
    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 50.0
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              title
            ],
          ),
          UserInfo(user),
          ButtonsBar()
        ],
      ),
    );
  }
}

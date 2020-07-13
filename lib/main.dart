import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:platzi_tripss_app/description_place.dart';
import 'package:platzi_tripss_app/header_appbar.dart';
import 'package:platzi_tripss_app/review_list.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light
    )
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final _descriptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."; 
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue[255],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
/*         appBar: AppBar(
          centerTitle: true,
          title: Text("LandScape"),
        ), */
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace(namePlace: "Guatemala", stars: 4, descriptionPlace: _descriptionDummy,),
                ReviewList(),
              ],
            ),            
            HeaderAppBar(),
          ],
        ),
    ),
  );
  }
}
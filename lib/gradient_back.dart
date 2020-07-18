import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = "Popular";
  double size = 250.0;
  double heightS = -5;

  GradientBack({this.title, this.size, this.heightS});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0,0.6],
          tileMode: TileMode.clamp
        ),
      ),
      child:  Text(title,
        style: TextStyle(
          height: heightS,
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Plato",
          fontWeight: FontWeight.bold,
        ),
      ),

      alignment: Alignment(-0.9, -0.6),
      

    );
  }
}
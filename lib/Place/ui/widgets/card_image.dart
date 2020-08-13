import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/widgets/floating_action_button_green.dart';

class  CardImageWithFabIcon extends StatelessWidget {

  final double height;
  final double width;
  double left = 20.0;
  final String pathImage;
  final VoidCallback onpressFabIcon;
  final IconData iconData;

  CardImageWithFabIcon({
    Key key,
    @required this.pathImage,
    @required this.width,
    @required this.height,
    @required this.iconData,
    @required this.onpressFabIcon,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        left: 20.0
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(pathImage,),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow (
            color:  Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]

      ),
    );
    
    return Stack(
      alignment: Alignment(0.9,1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(iconData: iconData, onPressed: onpressFabIcon,)
      ],
    );
  }
}
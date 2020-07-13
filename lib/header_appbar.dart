import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/card_imge_list.dart';

import 'package:platzi_tripss_app/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(title: "Bienvenido",),
        CardImageList()
      ],
    );
  }
}


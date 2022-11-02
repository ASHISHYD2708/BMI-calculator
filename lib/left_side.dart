import 'package:myfirst/ap_constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LeftBar extends StatelessWidget{
  final double barWidth;
  final Color accentHexColor = HexColor("#FCC91C");
  LeftBar({Key? key, required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
            //for making the particular area circular we use borderadius only otherwise we use borderadius all
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
              color: accentHexColor),
        )
      ],
    );
  }
}
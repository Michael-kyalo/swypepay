import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const AppBarIcon({Key key, this.iconData, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)
        ),

        child: IconButton(icon: Icon(iconData), color:Colors.black45 ,onPressed: this.onPressed,));}
}

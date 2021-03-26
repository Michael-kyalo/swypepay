import 'package:flutter/material.dart';

class CustomLeadingIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
        ),

        child: IconButton(icon: Icon (Icons.west_rounded), color: Colors.blue, onPressed: ()=> Navigator.of(context).pop()));
  }
}

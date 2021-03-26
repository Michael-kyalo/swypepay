import 'package:flutter/material.dart';

class OpenDrawerIcon extends StatelessWidget {
 final GlobalKey<ScaffoldState> scaffoldKey;

  const OpenDrawerIcon({Key key, this.scaffoldKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12, width: 0.5)
        ),

        child: IconButton(icon: Icon (Icons.menu_rounded), color: Colors.black45, onPressed: ()=> scaffoldKey.currentState.openDrawer()));

  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/navigation_drawer.dart';
import 'package:swypepay/widgets/Widgets/open_drawer_icon.dart';

class HomeBody extends StatefulWidget {

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [


              Row(
               children: [

                 OpenDrawerIcon(
                   scaffoldKey: _scaffoldKey,
                 )
               ],
              )
            ],
          ),
        ),

      ),
      drawer: NavigationDrawer(_scaffoldKey),
      drawerDragStartBehavior: DragStartBehavior.start,
    );
  }
}

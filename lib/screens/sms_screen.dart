import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/app_bar_icon.dart';
import 'package:swypepay/widgets/Widgets/navigation_drawer.dart';
import 'package:swypepay/widgets/Widgets/open_drawer_icon.dart';
import 'package:swypepay/widgets/Lists/chat_list.dart';
import 'package:swypepay/models/chat.dart';




class SmsScreen extends StatefulWidget {

  @override
  _SmsScreenState createState() => _SmsScreenState();
}

class _SmsScreenState extends State<SmsScreen> {
  List<Chat> chatList = [
    Chat(
        0,"Mark Conors","Hi there :), I was checking your work on dribbble. \nWe're creating a startup related to airport services",
        "Apr 20th"
    ),
    Chat(
        1,"Mark Conors","Hi there :), I was checking your work on dribbble. \nWe're creating a startup related to airport services",
        "Apr 20th"
    ),
    Chat(
        2,"Mark Conors","Hi there :), I was checking your work on dribbble. \nWe're creating a startup related to airport services",
        "Apr 20th"
    ),
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavigationDrawer(_scaffoldKey),
      drawerDragStartBehavior: DragStartBehavior.start,
      body: SafeArea(child: Container(
        padding: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OpenDrawerIcon(
                  scaffoldKey: _scaffoldKey,
                ),
                AppBarIcon(
                  iconData: Icons.search_outlined,
                  onPressed: () {},
                ),
              ],

            ),
            SizedBox(height: 50,),
            Expanded(child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: TabBar(
                    indicatorColor: Colors.blue,
                    labelColor: Colors.blue,
                    labelStyle: Theme.of(context).textTheme.headline2,
                    unselectedLabelColor: Colors.black45,
                    unselectedLabelStyle: Theme.of(context).textTheme.headline2,
                    tabs: [
                      Tab(
                        text: "Outbox",
                      ),
                      Tab(
                        text: "Queued",
                      ),

                    ],
                  ),

                ),

                body: TabBarView(
                  children: [
                  ChatList(
                    list: chatList,
                  ),
                ChatList(
                list: chatList,
              )]
                ),
              ),
            ))
          ],
        ),
      )),

    );
  }
}

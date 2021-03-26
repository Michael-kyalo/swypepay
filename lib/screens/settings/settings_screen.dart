import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/navigation_drawer.dart';
import 'package:swypepay/widgets/Widgets/open_drawer_icon.dart';
import 'package:swypepay/widgets/Lists/settings_list_item.dart';
import 'package:swypepay/models/setting.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<Setting> settingList = [
    Setting(
      "Personal Information",
      "View and edit account password",
      Icons.person,
      "personalinformation",
      Colors.blue
    ),
    Setting(
        "Display Settings",
        "Configure App Display",
        Icons.brightness_7,
        "displaysettings",
        Colors.redAccent[400]
    ),
    Setting(
        "Notification Settings",
        "Configure Notification Settings",
        Icons.notifications,
        "notificationsettings",
        Colors.teal[700]
    ),
    Setting(
        "Business Account Setup",
        "Configure and edit business documents",
        Icons.insert_drive_file_rounded,
        "businessaccountsetup",
        Colors.purple
    ),
    Setting(
        "Security Settings",
        "View your access logs",
        Icons.verified_user,
        "securitysettings",
        Colors.pink[700]
    ),
    Setting(
        "Privacy policy",
        "View our policy on data",
        Icons.info_outlined,
        "privacypolicy",
        Colors.green[400]
    ),
    Setting(
        "About Swype App",
        "All about our awesome app",
        Icons.star,
        "about",
        Colors.purple[900]
    )
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
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
                ),
                SizedBox(height: 20,),
                Stack(
                  clipBehavior: Clip.none, alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 50.0,
                        backgroundImage: AssetImage(
                            'assets/image.png'
                        )
                    ),
                    Positioned(
                      right: -20,
                        child:   Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color:Colors.white,
                            size: 15,
                          ),
                        ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Text("DEMO ACCOUNT", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.black)),
                SizedBox(height: 5.0,),
                Text("Active", style:  Theme.of(context).textTheme.bodyText1),
                SizedBox(height: 50,),
                Expanded(
                  child: ListView.builder(

                    itemCount: settingList.length ,
                      itemBuilder: (context,index){
                    return SettingsListItem(
                          setting: settingList[index],
                    );
                  }),
                )

              ],
            ),
          ),
        ),

      ),
      drawer: NavigationDrawer(_scaffoldKey),
      drawerDragStartBehavior: DragStartBehavior.start,
    );
  }
}

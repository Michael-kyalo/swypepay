import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';
import 'package:swypepay/widgets/Lists/theme_settings_list_item.dart';

class DisplaySettingsScreen extends StatefulWidget {
  @override
  _DisplaySettingsScreenState createState() => _DisplaySettingsScreenState();
}

class _DisplaySettingsScreenState extends State<DisplaySettingsScreen> {
  List titleList = [
    "Use device settings",
    "Dark Mode"
  ];
  List tagList = [
    "Sets the theme to automatically match your device's theme settings",
    "Sets the app to use dark mode regardless of device theme"
  ];
  List stateList = [true, false];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:

              Scaffold(
                appBar: CustomAppBar(
                  title: "App Theme",
                ),
                body:  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Configure app to make it easier for use at night or day as you like",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Expanded(child: ListView.builder(
                        itemCount: titleList.length,
                          itemBuilder: (context,index){
                        return CustomListItemWithSwitch(
                          title: titleList[index] ,
                          tag: tagList[index],
                          isChecked: stateList[index],
                        );
                      }))
                    ],

                  ),
                ),
              ),

          ),

      );

  }
}

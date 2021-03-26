import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Lists/notification_setting_list_item.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';

class NotificationSettingsScreen extends StatefulWidget {
  @override
  _NotificationSettingsScreenState createState() => _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
  List titleList = [
    "Receive Payments",
    "Payment Requests",
    "Send Payments",
    "Offers and promos"
  ];
  List tagList = [
    "",
    "",
    "",
    "",
  ];
  List stateList = [true, false,true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:

          Scaffold(
            appBar: CustomAppBar(
              title: "Notifications",
            ),
            body:  Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Choose notifications you want to recieve. Please note, we'll send security notifications or if we need to contact you about your account",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(child: ListView.builder(
                      itemCount: titleList.length,
                      itemBuilder: (context,index){
                        return NotificationSettingsListItem(
                          title: titleList[index] ,
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

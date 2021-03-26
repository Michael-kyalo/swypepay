import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';
import 'package:swypepay/widgets/Widgets/drop_down.dart';
import 'package:swypepay/widgets/Widgets/search_bar.dart';
import 'package:swypepay/widgets/Lists/access_log_list_item.dart';

class SecuritySettingsScreen extends StatefulWidget {


  @override
  _SecuritySettingsScreenState createState() => _SecuritySettingsScreenState();
}

class _SecuritySettingsScreenState extends State<SecuritySettingsScreen> {
  List timeList = [
    "Time",
    "Today",
    "Week"
  ];
  List cityList = [
    "City",
    "Today",
    "Week"
  ];
  String timeChosen = "Time";
  String cityChosen = "City";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Scaffold(
            appBar: CustomAppBar(
              title: "Access Logs",
            ),
            body:  Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "These are logs of account access with location and time. Please note these are for security purposes only.",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomSearchBar(),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: CustomDropDown(
                          valueChosen: timeChosen,
                          valuesList: timeList,
                          title: "",
                          star: "",

                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        child: CustomDropDown(
                          valueChosen: cityChosen,
                          valuesList: cityList,
                          title: "",
                          star: "",

                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Expanded(


                    child:  ListView.builder(itemCount: 3,itemBuilder: (context, index){
                          return AccessLogListItem();
                        }),
                  )
                ],
              ),
            ),
          ),
        ),

    );
  }
}

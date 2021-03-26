import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/custom_switch.dart';

class NotificationSettingsListItem extends StatelessWidget {
  final String title;
  final bool isChecked;

  const NotificationSettingsListItem({Key key, this.title, this.isChecked}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.black12, width: 0.5),
          )),
      child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(
                  this.title,
                  style: Theme.of(context)
                      .textTheme
                      .headline1.copyWith(fontSize: 12)
              ),
              CustomizedSwitch(
                isSwitched: this.isChecked,
              )

            ],
          ),


    );
  }
}

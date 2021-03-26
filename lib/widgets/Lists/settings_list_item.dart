import 'package:flutter/material.dart';
import 'package:swypepay/models/setting.dart';

class SettingsListItem extends StatelessWidget {
  final Setting setting;

  const SettingsListItem({Key key, this.setting}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white
          ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: setting.color,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Icon(
                    setting.iconData,
                    color: Colors.white,
                  )),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        setting.title,
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        setting.tag,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1.copyWith(fontSize: 10)
                    ),


                  ],
                ),
              ],
            ),
          ),
          Positioned(
          right: 5,child: IconButton(icon: Icon(Icons.navigate_next, color: Colors.black45,) , onPressed:(){
            Navigator.of(context).pushNamed(setting.route);
          } ))
        ],
      ),
      onTap: (){
        Navigator.of(context).pushNamed(setting.route);
      }
    );
  }
}

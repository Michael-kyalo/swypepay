import 'package:flutter/material.dart';
class CustomRowItem extends StatelessWidget {
  final IconData iconData;
  final String type;
  final String amount;

  const CustomRowItem({Key key, this.iconData, this.type, this.amount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
              color: Colors.white, shape: BoxShape.circle),
          child: Icon(
             iconData,
            color: type  == "Income" ? Colors.blue : Colors.redAccent,
          ),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              amount,
              style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 10),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  final String route;
  final String tagText;

  const CustomFAB({Key key, this.route, this.tagText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Navigator.of(context).pushNamed(route),
      child: Container(
        height: 50,
        width: 250,
        padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0

        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
              ),
              child: Icon(Icons.add, color: Colors.white,),
            ),
            SizedBox(
              width: 10,
            ),
            Text(tagText, style: Theme.of(context).textTheme.headline1.copyWith(
                fontSize: 14
            ),)
          ],
        ),
      ),
    );
  }
}

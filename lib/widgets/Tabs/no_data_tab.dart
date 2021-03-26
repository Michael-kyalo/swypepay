import 'package:flutter/material.dart';

class NoData extends StatelessWidget {
  final String warning;
  final String extra;


  const NoData({Key key, this.warning, this.extra}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 120.0,),
            Text(warning, style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 18),),
            SizedBox(height: 30.0,),
            Text(extra, style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,),

          ],
        ),
      ),
    );
  }
}

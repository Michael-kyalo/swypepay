import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/leading_icon.dart';
class DefaultTab extends StatelessWidget {
  final String title;
  final List<Widget> Tabs;
  final List<String> titles;

  const DefaultTab({Key key, this.title, this.Tabs, this.titles}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(title, style: Theme.of(context).textTheme.headline1.copyWith(
              fontSize: 14
          ),),
          backgroundColor: Colors.transparent,
          leading:CustomLeadingIcon(),
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            labelStyle: Theme.of(context).textTheme.headline2,
            unselectedLabelColor: Colors.black45,
            unselectedLabelStyle: Theme.of(context).textTheme.headline2,
            tabs: [
              Tab(
                text: titles[0],

              ),
              Tab(
                text:  titles[1],
              )

            ],
          ),

        ),
        body: TabBarView(
          children: <Widget>[
           Tabs[0],Tabs[1]
          ],
        ),

      ),
    );
  }
}

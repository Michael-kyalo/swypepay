import 'package:flutter/material.dart';
import '../Lists/navigation_list_tile.dart';

class NavigationDrawer extends StatelessWidget {
 final  GlobalKey<ScaffoldState> _scaffoldKey;

  NavigationDrawer(this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      child: IconButton(
                          icon: Icon(Icons.arrow_back_outlined),
                          onPressed: () {
                            _scaffoldKey.currentState.openEndDrawer();
                          }),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 40.0,
                    backgroundImage: AssetImage(
                      'assets/image.png'
                    )
                    ),
                  SizedBox(height: 20,),
                  Text("DEMO ACCOUNT", style: Theme.of(context).textTheme.headline1),
                  SizedBox(height: 5.0,),
                  Text("Active", style:  Theme.of(context).textTheme.bodyText1),
                  SizedBox(height: 20.0,),
                  Expanded(
                    child: ListView(
                      children: [

                        CustomListTile(Icons.account_balance_wallet,"Banking","banking"),
                        CustomListTile(Icons.supervisor_account_sharp,"Customers", "customers"),
                        CustomListTile(Icons.calendar_view_day_outlined, "Sub Accounts", "subaccount"),
                        CustomListTile(Icons.shopping_bag, "Point of sale", "pointofsale"),
                        CustomListTile(Icons.description, "Account Statement", "accountstatement"),

                      ],
                    ),
                  ),


                ],
              ),

              Positioned(
                bottom: 2.0,
                  child: Container(
                width: MediaQuery.of(context).size.width,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Row(
                        children: [
                          Icon(Icons.logout, color: Colors.blue,),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("Logout", style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                          ),)

                        ],
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Divider(
                      color: Colors.black45,

                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6 ,
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Version", style:  Theme.of(context).textTheme.subtitle1,),


                          Text("v1.0.0", style:  Theme.of(context).textTheme.subtitle1,)
                        ],

                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text("Terms and Conditions", style:  Theme.of(context).textTheme.subtitle1,),
                    SizedBox(height: 10.0,),
                    Text("Privacy Policy", style: Theme.of(context).textTheme.subtitle1),
                    SizedBox(height: 10.0,),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    ));
  }
}

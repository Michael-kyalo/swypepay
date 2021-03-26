import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/custom_row_item.dart';
import 'package:swypepay/widgets/Widgets/navigation_drawer.dart';
import 'package:swypepay/widgets/Widgets/open_drawer_icon.dart';
import 'package:swypepay/widgets/Widgets/app_bar_icon.dart';
import 'package:swypepay/widgets/Lists/transaction_list.dart';

class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List period = ["1 Month", "3 Months", "6 Months"];
  String chosen = "1 Month";
  List recievedList = [0,0,0,0];
  List sentList = [1,1,1,1];
  List allList = [0,1,1,0,1,1,0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OpenDrawerIcon(
                    scaffoldKey: _scaffoldKey,
                  ),
                  AppBarIcon(
                    iconData: Icons.search_outlined,
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "2020",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Mar 26 - Apr 26",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Center(
                        child: DropdownButtonHideUnderline(
                      child: Container(
                        color: Colors.white,
                        child: DropdownButton(
                          hint: Text(chosen),
                          isExpanded: true,
                          icon: Icon(Icons.arrow_drop_down),
                          value: chosen,
                          onChanged: (newValue) {
                            setState(() {
                              chosen = newValue;
                            });
                          },
                          items: period.map((valueItem) {
                            return DropdownMenuItem(
                                value: valueItem, child: Text(valueItem));
                          }).toList(),
                        ),
                      ),
                    )),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: CustomRowItem(
                      iconData: Icons.arrow_downward,
                      type: "Income",
                      amount: "Ksh 2,500.00",
                    )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: CustomRowItem(
                      iconData: Icons.arrow_upward,
                      type: "Expenses",
                      amount: "Ksh 2,500.00",
                    )
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    appBar: AppBar(
                      automaticallyImplyLeading: false,
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      flexibleSpace: TabBar(
                        indicatorColor: Colors.blue,
                        labelColor: Colors.blue,
                        labelStyle: Theme.of(context).textTheme.headline2,
                        unselectedLabelColor: Colors.black45,
                        unselectedLabelStyle: Theme.of(context).textTheme.headline2,
                        tabs: [
                          Tab(
                            text: "All",
                          ),
                          Tab(
                            text: "Income",
                          ),
                          Tab(
                            text: "Expense",
                          )
                        ],
                      ),

                    ),
                    body: TabBarView(
                      children: [
                        TransactionList(
                          list: allList,
                        ),
                        TransactionList(
                          list: recievedList,
                        ),
                        TransactionList(
                          list: sentList,
                        ),
                      ],
                    ),
                  ),


                ),
              )

            ],
          ),
        ),
      ),
      drawer: NavigationDrawer(_scaffoldKey),
      drawerDragStartBehavior: DragStartBehavior.start,
    );
  }
}

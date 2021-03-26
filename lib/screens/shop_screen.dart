import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Tabs/shop_items_tab.dart';
import 'package:swypepay/widgets/Widgets/app_bar_icon.dart';
import 'package:swypepay/widgets/Widgets/navigation_drawer.dart';
import 'package:swypepay/widgets/Widgets/open_drawer_icon.dart';
import 'package:swypepay/widgets/Tabs/online_orders_tab.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
                  Row(
                    children: [
                      AppBarIcon(
                        iconData: Icons.tune_rounded,
                        onPressed: () {},
                      ),
                      AppBarIcon(
                        iconData: Icons.search_outlined,
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: DefaultTabController(
                    length: 2,
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
                            unselectedLabelStyle:
                                Theme.of(context).textTheme.headline2,
                            tabs: [
                              Tab(
                                text: "Shop Items",
                              ),
                              Tab(
                                text: "Online Orders",
                              ),
                            ]),
                      ),
                      body: TabBarView(
                        children: [
                          ShopItemsTab(),
                          OnlineOrdersTab()

                        ],
                      ),
                    )),
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

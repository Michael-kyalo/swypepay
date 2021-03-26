import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/navigation_drawer.dart';
import 'transaction_screen.dart';
import 'shop_screen.dart';
import 'sms_screen.dart';
import 'settings/settings_screen.dart';
import 'home_body.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
  final List<Widget> _children = [
    HomeBody(),
    TransactionScreen(),
    ShopScreen(),
    SmsScreen(),
    SettingsScreen()


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      body: _children[selectedIndex],

      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8.0),
        child: BottomNavigationBar(
          elevation: 0,
          onTap: onTabTapped,
          currentIndex: selectedIndex,
          unselectedItemColor: Colors.black45,
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          items: [
           new BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home') ),
            new BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_rounded), title: Text('Transactions') ),
           new  BottomNavigationBarItem(icon: Icon(Icons.apps_sharp), title: Text('Shop') ),
            new BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded), title: Text('Sms') ),
            new BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings') ),
          ],
        ),
      ),
    );
  }
  void onTabTapped(int value) {

    setState(() {
      selectedIndex = value;
    });
  }

}

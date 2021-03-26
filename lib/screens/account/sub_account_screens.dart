import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';
import 'package:swypepay/widgets/Widgets/floating_action_button.dart';
import 'package:swypepay/models/sub_account.dart';
import 'package:swypepay/widgets/Lists/sub_account_list_item.dart';

class SubAccountScreen extends StatefulWidget {
  @override
  _SubAccountScreenState createState() => _SubAccountScreenState();
}

class _SubAccountScreenState extends State<SubAccountScreen> {
  List<SubAccount> subAccounts = [
    SubAccount(
      "TEST SUB ACCOUNT",
      "21232776767",
      "Ksh",
      "7 Jan 2021",
      "787"
    ),
    SubAccount(
        "TEST SUB ACCOUNT",
        "11223344567",
        "Usd",
        "7 Jan 2022",
        "1000"
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Scaffold(
            body: Container(

               child: ListView.builder(
                itemCount: subAccounts.length,
                itemBuilder: (context, index){
                  return SubAccountListItem(
                    subAccount:subAccounts[index],
                  );
                }),
            ),
            appBar: CustomAppBar(
              title: "Sub Accounts",
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: CustomFAB(
              tagText: "Add New Sub Account",
              route: "addsubaccount",
            ),
          ),
        ),
      ),
    );
  }
}

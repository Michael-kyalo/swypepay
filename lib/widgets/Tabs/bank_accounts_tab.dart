import 'package:flutter/material.dart';
import 'file:///C:/Users/ADMIN/AndroidStudioProjects/swypepay/lib/widgets/Lists/bank_account_list_item.dart';
import 'package:swypepay/models/bank_account.dart';
import 'package:swypepay/widgets/Widgets/floating_action_button.dart';

class BankAccountsTab extends StatefulWidget {
  @override
  _BankAccountsTabState createState() => _BankAccountsTabState();
}

class _BankAccountsTabState extends State<BankAccountsTab> {
  List<BankAccount> bankAccounts = [
    new BankAccount("Kenya Commercial Bank","Test BNK 20TH", "22222222", "Kisii","727"," "),
    new BankAccount("Equity Bank","Test BNK 20TH", "22222222", "Kisii","727"," "),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
              itemCount: bankAccounts.length,
              itemBuilder: (context, index){
            return BankAccountListItem(
                 bankAccount: bankAccounts[index],
            );
          }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFAB(
        route: "addbank",
        tagText: "Add Bank",
      )
    );
  }
}

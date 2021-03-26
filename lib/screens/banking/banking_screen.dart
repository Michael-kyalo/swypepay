import 'package:flutter/material.dart';
import 'file:///C:/Users/ADMIN/AndroidStudioProjects/swypepay/lib/widgets/Tabs/bank_accounts_tab.dart';
import 'file:///C:/Users/ADMIN/AndroidStudioProjects/swypepay/lib/widgets/Tabs/settlement_report_tab.dart';
import 'file:///C:/Users/ADMIN/AndroidStudioProjects/swypepay/lib/widgets/Tabs/default_tab.dart';
class BankingScreen extends StatefulWidget {
  @override
  _BankingScreenState createState() => _BankingScreenState();
}

class _BankingScreenState extends State<BankingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(top: 20, left: 10),
        child: DefaultTab(
          title: "Banking",
          titles: [
            "Bank Accounts",
            "Settlement Reports"
          ],
          Tabs: [
            BankAccountsTab(),
            SettlementReportTab()
          ],
        ),
      ),
    );
  }
}

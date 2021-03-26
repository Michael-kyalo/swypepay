import 'package:flutter/material.dart';
import 'no_data_tab.dart';

class SettlementReportTab extends StatefulWidget {
  @override
  _SettlementReportTabState createState() => _SettlementReportTabState();
}

class _SettlementReportTabState extends State<SettlementReportTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoData(
        warning: "No data available",
        extra: "When You have new reports \nthey'll surely appear here.",
      )
    );
  }
}

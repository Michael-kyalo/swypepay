import 'package:flutter/material.dart';

import 'no_data_tab.dart';
import 'package:swypepay/widgets/Widgets/floating_action_button.dart';

class CustomerGroupTab extends StatefulWidget {
  @override
  _CustomerGroupTabState createState() => _CustomerGroupTabState();
}

class _CustomerGroupTabState extends State<CustomerGroupTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoData(
        warning: "No group Created",
        extra: "",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFAB(
        route: "addcustomer",
        tagText: "Add Group" ,
      )
    );
  }
}

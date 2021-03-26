import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Tabs/default_tab.dart';
import 'package:swypepay/widgets/Tabs/customer_groups_tab.dart';
import 'package:swypepay/widgets/Tabs/customers_tab.dart';

class CustomerScreen extends StatefulWidget {
  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(top: 20, left: 10),
        child: DefaultTab(
          title: "Customers",
          titles: [
            "Customers",
            "Customer Groups"
          ],
          Tabs: [
            CustomersTab(),
           CustomerGroupTab()
          ],
        ),
      ),
    );
  }
}

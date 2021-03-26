import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/floating_action_button.dart';
import 'package:swypepay/widgets/Lists/customer_list_item.dart';
import 'package:swypepay/models/customer.dart';
class CustomersTab extends StatefulWidget {
  @override
  _CustomersTabState createState() => _CustomersTabState();
}

class _CustomersTabState extends State<CustomersTab> {
  List<Customer> customerList = [
    Customer(
      "John Chege",
      "0700 000 000",
      "Ksh 100",
      "7 Jan, 2021",
      true
    ),
    Customer(
        "Lyn Chebet",
        "0700 000 000",
        "Ksh 100",
        "7 Feb, 2021",
        false
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: ListView.builder(
            itemCount: customerList.length,
            itemBuilder: (context, index){
          return CustomerListItem(
            customer: customerList[index],
          );
        }),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFAB(
        route: "addcustomer",
        tagText: "Add Customer",
      )
    );
  }
}

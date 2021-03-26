import 'package:flutter/material.dart';
import 'transaction_list_item.dart';

class TransactionList extends StatelessWidget {
  final List list;

  const TransactionList({Key key, this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   ListView.builder(itemCount:list.length,itemBuilder: (context, index){return TransactionListItem(
        type: list[index]
    );});
  }
}

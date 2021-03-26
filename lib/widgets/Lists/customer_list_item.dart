import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/models/customer.dart';

class CustomerListItem extends StatelessWidget {
  final Customer customer;

  const CustomerListItem({Key key, this.customer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: Colors.black12, width: 0.5),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: customer.status ? Colors.teal : Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    customer.status ? "Active" : "offline",
                    style: customer.status
                        ? Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.teal)
                        : Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.grey),
                  )
                ],
              ),
              Container(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      customer.name,
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(fontSize: 16),
                    ),
                    CustomRow(Icons.phone, customer.phone, context)
                  ],
                ),
              ),
              CustomRow(Icons.work_rounded, customer.amount, context),
              CustomRow(Icons.calendar_today, customer.date, context),
            ],
          ),
        ),
        Positioned(
            right: 20,
            top: 30,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white30,
                      border: Border.all(color: Colors.black12, width: 0.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.phone,
                    color: Colors.blue,
                    size: 15,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white30,
                      border: Border.all(color: Colors.black12, width: 0.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.chat,
                    color: Colors.orange,
                    size: 15,
                  ),
                ),
              ],
            ))
      ],
    );
  }

  Widget CustomRow(IconData iconData, String text, BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: Colors.black45,
          size: 12,
        ),
        SizedBox(width: 5,),
        Text(text,
            style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 12))
      ],
    );
  }
}

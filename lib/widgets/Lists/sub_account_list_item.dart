import 'package:flutter/material.dart';
import 'package:swypepay/models/sub_account.dart';

class SubAccountListItem extends StatelessWidget {
  final SubAccount subAccount;

  const SubAccountListItem({Key key, this.subAccount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      subAccount.name,
                      style:  Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(height: 10,),
                    RichText(text: TextSpan(
                        text: "Account Number: ",
                        style:  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 10.0),
                        children: [
                          TextSpan(
                            text: subAccount.number,
                            style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 10),
                          )
                        ]
                    ),),
                    SizedBox(height: 10,),
                    RichText(text: TextSpan(
                        text: "Currency: ",
                        style:  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 10.0),
                        children: [
                          TextSpan(
                            text: subAccount.currency,
                            style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 10),
                          )
                        ]
                    ),),
                    SizedBox(height: 10,),
                    RichText(text: TextSpan(
                        text: "Amount Paid : ",
                        style:  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 10.0),
                        children: [
                          TextSpan(
                            text: subAccount.amount,
                            style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 10),
                          )
                        ]
                    ),),
                    SizedBox(height: 10,),
                    RichText(text: TextSpan(
                        text: "Date Created : ",
                        style:  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 10.0),
                        children: [
                          TextSpan(
                            text: subAccount.date,
                            style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 10),
                          )
                        ]
                    ),),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              right: 10,
              bottom: 40,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12
                    ),
                    child: Icon(Icons.edit, color: Colors.blue, size: 15,),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12
                    ),
                    child: Icon(Icons.delete_forever_outlined, color: Colors.redAccent, size: 15,),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

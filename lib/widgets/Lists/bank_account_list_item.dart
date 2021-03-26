import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/models/bank_account.dart';

class BankAccountListItem extends StatelessWidget {
  final BankAccount bankAccount;

  const BankAccountListItem({Key key, this.bankAccount}) : super(key: key);
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
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.green
                  ),
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bankAccount.BankName,
                      style:  Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(height: 10,),
                    RichText(text: TextSpan(
                      text: "Account Name: ",
                      style:  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 10.0),
                      children: [
                        TextSpan(
                          text: bankAccount.AccountName,
                          style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 10),
                        )
                      ]
                    ),),
                    SizedBox(height: 10,),
                    RichText(text: TextSpan(
                        text: "Account Number: ",
                        style:  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 10.0),
                        children: [
                          TextSpan(
                            text: bankAccount.AccountNumber,
                            style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 10),
                          )
                        ]
                    ),),
                    SizedBox(height: 10,),
                    RichText(text: TextSpan(
                        text: "Bank Branch: ",
                        style:  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 10.0),
                        children: [
                          TextSpan(
                            text: bankAccount.BankBranch,
                            style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 10),
                          )
                        ]
                    ),),
                    SizedBox(height: 10,),
                    RichText(text: TextSpan(
                        text: "Bank Code: ",
                        style:  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 10.0),
                        children: [
                          TextSpan(
                            text: bankAccount.BankCode,
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
              bottom: 15,
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

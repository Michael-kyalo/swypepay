import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';
import 'package:swypepay/widgets/Widgets/drop_down.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';
import 'package:swypepay/widgets/Widgets/text_form_field.dart';

class AccountStatementScreen extends StatefulWidget {
  @override
  _AccountStatementScreenState createState() => _AccountStatementScreenState();
}

class _AccountStatementScreenState extends State<AccountStatementScreen> {
  List typeList = [
    "All",
    "Send"
    "Received",
    "Withdraw"
  ];
  String value = "All";
  String value2 = "All Payment Methods";
  List methodList = [
    "All Payment Methods",
    "Bank",
    "Mobile Money"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
          child: Scaffold(

            appBar: CustomAppBar(
              title: "Account Statement",
            ),
            body: SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text("Statement Period", style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.blue, fontSize: 14),),
                      SizedBox(height: 20,),
                      Text("Jan 02,2021 to Feb 02,2021", style: Theme.of(context).textTheme.bodyText1,),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomFormField(
                                  isLong: false,
                                  isObscured: false,
                                  title: "Date Period",
                                  star: "",
                                  hasSuffix: false,
                                ),
                              ),


                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: CustomDropDown(
                              valueChosen: value,
                              valuesList: typeList,
                              title: "transaction Type",
                              star: "",
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: CustomDropDown(
                          star: "",
                          valueChosen: value2,
                          title: "Payment Methods",
                          valuesList: methodList,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CustomButton(
                        title: "Generate reports",
                        onPressed: (){

                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

    );
  }
}

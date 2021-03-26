import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/text_form_field.dart';
import 'package:swypepay/widgets/Widgets/drop_down.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';
import 'package:swypepay/widgets/Widgets/leading_icon.dart';

class AddBankScreen extends StatefulWidget {
  @override
  _AddBankScreenState createState() => _AddBankScreenState();
}

class _AddBankScreenState extends State<AddBankScreen> {
  String BankChosen = "Kenya Commercial Bank";
  String BranchChosen = "KenCom";
  List Banklist = [
    'Kenya Commercial Bank','Equity Bank', 'Bank 3','Bank 4'
  ];
  List Branchlist = [
    'KenCom','Branch 2', 'Branch 3','Branch 4'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Scaffold(
                    body: SafeArea(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  CustomLeadingIcon(),
                                  SizedBox(width: 10.0,),
                                  Text(
                                    'Add Bank',
                                    style: Theme.of(context).textTheme.headline1.copyWith(
                                        fontSize: 14
                                    ),
                                  )
                                ],
                              ),

                             CustomFormField(
                               title: "Account Name",
                               hasSuffix: true,
                               star: " ",
                               isObscured: false,
                               isLong: false,
                             ),
                              CustomFormField(
                                title: "Account Number",
                                hasSuffix: true,
                                star: " ",
                                isObscured: false,
                                isLong: false,
                              ),
                              CustomDropDown(
                                valueChosen: BankChosen,
                                valuesList: Banklist,
                                title: "Select Bank Name",
                                star: "*",
                              ),
                              CustomDropDown(
                                valueChosen: BranchChosen,
                                valuesList: Branchlist,
                                title: "Select Bank Branch",
                                star: "*",
                              ),
                              CustomFormField(
                                title: "Mobile Till",
                                hasSuffix: false,
                                star: " ",
                                isObscured: false,
                                isLong: false,
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
              Positioned(
                  bottom: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width* 0.8,
                    child: CustomButton(
                      title: "Continue",
                      onPressed: (){},
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

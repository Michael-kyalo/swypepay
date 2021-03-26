import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';
import 'package:swypepay/widgets/Widgets/drop_down.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';
import 'package:swypepay/widgets/Widgets/leading_icon.dart';
import 'package:swypepay/widgets/Widgets/text_form_field.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  List categorylist = [
    "Electronics","Fashion"
  ];
  String categoryChosen = "Electronics";
  List accessiblityList = [
    "Online Shop",
    "Choice 2"
  ];
  String accessibilityChosen = "Online Shop";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomLeadingIcon(),
                              SizedBox(width: 10.0,),
                              Text(
                                'Add Product',
                                style: Theme.of(context).textTheme.headline1.copyWith(
                                    fontSize: 14
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          CustomFormField(
                            title: "Item Name",
                            hasSuffix: true,
                            isObscured: false,
                            star: "",
                            isLong: false,
                          ),
                          CustomFormField(
                            title: "Item Price",
                            hasSuffix: true,
                            isObscured: false,
                            star: "",
                            isLong: false,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomFormField(
                                  title: "Available Stock",
                                  hasSuffix: false,
                                  isObscured: false,
                                  star: "",
                                  isLong: false,
                                ),

                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomFormField(
                                  title: "Lower Stock Alert Qty",
                                  hasSuffix: false,
                                  isObscured: false,
                                  star: "",
                                  isLong: false,
                                ),

                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomDropDown(
                                  valueChosen: categoryChosen,
                                  title: "Category",
                                  star: "*",
                                  valuesList: categorylist,

                                )

                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomDropDown(
                                  valueChosen: accessibilityChosen,
                                  valuesList: accessiblityList,
                                  title: "Accessibility",
                                  star: "*",
                                )

                              )
                            ],
                          ),
                          CustomFormField(
                            title: "item Description",
                            hasSuffix: false,
                            isObscured: false,
                            star: "",
                            isLong: true,
                          ),
                        SizedBox(height: 50,),
                        Container(
                          width: MediaQuery.of(context).size.width* 0.8,
                          child: CustomButton(
                            title: "Continue",
                            onPressed: (){},
                          ),
                        )]),
                    ),
                  ),
                ),

                  );

  }
}

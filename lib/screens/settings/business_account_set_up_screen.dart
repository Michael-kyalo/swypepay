import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';
import 'package:swypepay/widgets/Widgets/drop_down.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';
import 'package:swypepay/widgets/Widgets/text_form_field.dart';

class BusinessAccountSetUpScreen extends StatefulWidget {
  @override
  _BusinessAccountSetUpScreenState createState() => _BusinessAccountSetUpScreenState();
}

class _BusinessAccountSetUpScreenState extends State<BusinessAccountSetUpScreen> {
  List list = [
    "English",
    "Swahili"
  ];
  String chosen = "English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:

          Scaffold(
            appBar: CustomAppBar(
              title: "Configure Documents",
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.white, shape: BoxShape.circle),
                                child: Icon(
                                  Icons.check,
                                  color:  Colors.blue,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 5,
                                margin: EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.blue, shape: BoxShape.rectangle),

                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("Step one", style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 8),),
                          SizedBox(height: 5),
                          Text("Basic Information", style:  Theme.of(context).textTheme.headline2.copyWith(fontSize: 8),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.white, shape: BoxShape.circle),
                                child: Icon(
                                    Icons.check,
                                    color:  Colors.blue,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 5,
                                margin: EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.blue, shape: BoxShape.rectangle),


                              ),

                            ],
                          ),
                          SizedBox(height: 10),
                          Text("Step Two", style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 8),),
                          SizedBox(height: 5),
                          Text("Upload Documents", style:  Theme.of(context).textTheme.headline2.copyWith(fontSize: 8),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                              Container(
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.white, shape: BoxShape.circle),
                                child: Icon(
                                    Icons.check,
                                    color:  Colors.blue,
                                  size: 18,
                                ),
                              ),
                          SizedBox(height: 10),
                          Text("Step Three", style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 8),),
                          SizedBox(height: 5),
                          Text("Accept Terms", style:  Theme.of(context).textTheme.headline2.copyWith(fontSize: 8),)


                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomFormField(
                    title: "Business Friendly Name (optional).",
                    star: "*",
                    isObscured: false,
                    isLong: false,
                    hasSuffix: false,
                  ),
                  Container(
                    width: double.infinity,
                    child: CustomDropDown(
                      valueChosen: chosen,
                      valuesList: list,
                      title: "What's your preferred language",
                      star: "*",
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: CustomDropDown(
                      valueChosen: chosen,
                      valuesList: list,
                      title: "Business Category",
                      star: "*",
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                    title: "continue",
                    onPressed: (){},
                  )

                ],

              ),
            ),
          ),

        ),
      ),
    );
  }
}

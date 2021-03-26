import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';
import 'package:swypepay/widgets/Widgets/text_form_field.dart';
import 'package:swypepay/widgets/Widgets/drop_down.dart';
import 'package:swypepay/widgets/Widgets/leading_icon.dart';
class SignUpStepTwo extends StatefulWidget {
  @override
  _SignUpStepTwoState createState() => _SignUpStepTwoState();
}

class _SignUpStepTwoState extends State<SignUpStepTwo> {

  String valueChosen="1";
  String CountryChosen = "Kenya";
  String typeChosen = "type 1";
  List ownerList= [
    '1','2','3','4','5'
  ];
  List typlist = [
    'type 1','type 2', 'type 3','type 4'
  ];
  List countrylist = [
    'Kenya','Uganda', 'Tanzania','Rwanda'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Scaffold(

            body: SafeArea(
              child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                    'Step Two',
                                    style: Theme.of(context).textTheme.headline1.copyWith(
                                      fontSize: 14
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 50.0,),
                              CustomFormField(
                                hasSuffix: true,
                                isObscured: false,
                                title: "Business Name",
                                star: " ",
                                isLong: false,
                              ),
                              SizedBox(height: 20.0,),
                              CustomFormField(
                                hasSuffix: false,
                                isObscured: false,
                                title: "Business Registration No.",
                                star: "*",
                                isLong: false,
                              ),
                              SizedBox(height: 20.0,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.4,
                                    child: CustomDropDown(
                                      valueChosen: valueChosen,
                                      valuesList: ownerList,
                                      star: "*",
                                      title: "No.of owners",
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.4,
                                    child: CustomDropDown(
                                      valueChosen: CountryChosen,
                                      valuesList: countrylist,
                                      star: "*",
                                      title: "Country",
                                    ),
                                  )
                                ],
                              ),

                              SizedBox(height: 20.0,),

                              CustomDropDown(
                                title: "Business Type",
                                star: "*",
                                valueChosen: typeChosen,
                                valuesList: typlist,
                              ),
                              SizedBox(height: 20.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right:4.0),
                                    height: 6,
                                    width: 6,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 4.0),
                                    height: 6,
                                    width: 6,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0,),
                              CustomButton(
                                title: "Get Started",
                                onPressed: (){
                                  Navigator.of(context).pushNamed("login");
                                },
                              ),
                              SizedBox(height: 20.0,),

                            ],
                          ),
                        ),
                      ),
                    ),



            ),

          ),
          Positioned(bottom:0,child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "By continuing, you agree to SwypePay's,\n",
                        style: Theme.of(context).textTheme.bodyText1,
                        children: [
                          TextSpan(
                              text: 'Terms of use',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                          TextSpan(
                              text: ' and '
                          ),
                          TextSpan(
                              text: 'Privacy policy',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold
                              )
                          )
                        ]
                    )),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
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
    return Scaffold(

      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),

                      child: IconButton(icon: Icon (Icons.arrow_back_rounded), color: Colors.blue, onPressed: ()=> Navigator.of(context).pop())),
                  Text(
                    'Step Two'
                  )
                ],
              ),
              SizedBox(height: 50.0,),
              RichText(text: TextSpan(
                  text: 'Business Name',
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                        text: '*',
                        style: TextStyle(
                            color: Colors.red
                        )
                    )
                  ]
              )),
              SizedBox(height: 20.0,),
              TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Icon(
                      Icons.check_circle, color: Colors.blue,
                    ),
                    focusedBorder:  OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1.5)
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0)


                ),
              ),
              SizedBox(height: 20.0,),
              RichText(text: TextSpan(
                  text: 'Business Registration No.',
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                        text: '*',
                        style: TextStyle(
                            color: Colors.red
                        )
                    )
                  ]
              )),
              SizedBox(height: 20.0,),
              TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,

                    focusedBorder:  OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1.5)
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0)


                ),
              ),
              SizedBox(height: 20.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    child: Column(children: [
                      RichText(text: TextSpan(
                          text: 'No. of owners',
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold
                          ),
                          children: [
                            TextSpan(
                                text: '*',
                                style: TextStyle(
                                    color: Colors.red
                                )
                            )
                          ]
                      )),

                      DropdownButton(
                        hint: Text('1'),
                        icon: Icon(Icons.arrow_drop_down),
                        value: valueChosen,
                        onChanged: (newValue){
                          setState(() {
                            valueChosen = newValue;
                          });
                        },
                        items: ownerList.map((valueItem){
                          return DropdownMenuItem(
                            value: valueItem,
                              child: Text(valueItem));
                        }).toList(),





                      )



                    ],),
                  ),
                  Container(
                    child: Column(
                      children: [
                        RichText(text: TextSpan(
                            text: 'Country',
                            style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold
                            ),
                            children: [
                              TextSpan(
                                  text: '*',
                                  style: TextStyle(
                                      color: Colors.red
                                  )
                              )
                            ]
                        )),
                        DropdownButton(
                          value: CountryChosen,
                          hint: Text("Kenya"),
                             onChanged: (newValue){
                               setState(() {
                                 CountryChosen = newValue;
                               });
                             },
                            items: countrylist.map((valueItem){
                              return DropdownMenuItem(value:valueItem,child: Text(valueItem));
                            }).toList())


                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.0,),
              RichText(text: TextSpan(
                  text: 'Business Type',
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                        text: '*',
                        style: TextStyle(
                            color: Colors.red
                        )
                    )
                  ]
              )),
              SizedBox(height: 20.0,),
              Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Colors.white
                ),
                child: DropdownButton(
                  hint: Text('Business Type'),
                 isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  value: typeChosen,
                  onChanged: (newValue){
                    setState(() {
                      typeChosen = newValue;
                    });
                  },
                  items: typlist.map((valueItem){
                    return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem));
                  }).toList(),





                ),
              ),
              SizedBox(height: 20.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(2.0),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(2.0),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed("step2");
              }, child: SizedBox(
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Get Started", style:
                    TextStyle(color: Colors.white, fontSize: 20.0),),
                  ),
                ),
              )),
              SizedBox(height: 30.0,),
              Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "By continuing, you agree to SwypePay's,\n",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14.0,
                          height: 1.2,



                        ),
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
              ),

            ],
          ),
        ),
      )),

    );
  }
}

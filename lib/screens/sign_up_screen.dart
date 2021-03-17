import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
             Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),

                    child: IconButton(icon: Icon (Icons.arrow_back_rounded), color: Colors.blue, onPressed: ()=> Navigator.of(context).pop())),
              SizedBox(height: 30.0,),
              Text("Sign Up for SwypePay, It's free.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
                fontSize: 22.0
              ),),
              SizedBox(height: 20.0,),
              RichText(text: TextSpan(
                text: 'Email Address ',
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
                  text: 'Phone Number ',
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
              IntlPhoneField(
                initialCountryCode: 'KE',
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
              RichText(text: TextSpan(
                  text: 'Create PIN',
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
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
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
              RichText(text: TextSpan(
                  text: 'Confirm PIN',
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
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
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
                        color: Colors.black45,
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
                    child: Text("Continue", style:
                    TextStyle(color: Colors.white, fontSize: 20.0),),
                  ),
                ),
              )),





            ],
          ),
        ),
      )),

    );
  }
}

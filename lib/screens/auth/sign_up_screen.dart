import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/custom_phone_picker.dart';
import 'package:swypepay/widgets/Widgets/text_form_field.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';
import 'package:swypepay/widgets/Widgets/leading_icon.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),
              CustomLeadingIcon(),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Sign Up for SwypePay, It's free.",
                style: Theme.of(context).textTheme.headline1
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomFormField(
                title: "Email Address",
                star: "*",
                hasSuffix: true,
                isObscured: false,
                isLong: false,
              ),

              CustomPhonePicker(
                title: "Phone number" ,
                star: "*",
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomFormField(
                title: "Create Pin",
                star: "*",
                hasSuffix: false,
                isObscured: true,
                isLong: false,
              ),
              SizedBox(
                height: 20.0,
              ),

              CustomFormField(
                title: "Confirm Pin",
                star: "*",
                hasSuffix: false,
                isObscured: true,
                isLong: false,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 4.0),
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 4.0),
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        color: Colors.black45, shape: BoxShape.circle),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              CustomButton(
                title: "Continue",
                onPressed: (){
                  Navigator.of(context).pushNamed("step2");
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}

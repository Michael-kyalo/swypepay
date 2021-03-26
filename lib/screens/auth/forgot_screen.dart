import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/text_form_field.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';
import 'package:swypepay/widgets/Widgets/leading_icon.dart';
class ForgotScreen extends StatefulWidget {
  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                child: CustomLeadingIcon() ),
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                child: Text("Please enter your merchant code to \nreset password", style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black45,
                  height: 1.2,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30.0, bottom: 20),
                child: CustomFormField(
                  title: " ",
                  star: "",
                  hasSuffix: true,
                  isObscured: false,
                  isLong: false,
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                child: CustomButton(
                  title: "Continue",
                  onPressed: (){
                    Navigator.of(context).pushNamed("verification");
                  },
                )
              ),

            ],
        ),
      ),

    );
  }
}

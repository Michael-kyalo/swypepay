import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';
import 'package:swypepay/widgets/Widgets/text_form_field.dart';

class PersonalInfomationScreen extends StatefulWidget {
  @override
  _PersonalInfomationScreenState createState() => _PersonalInfomationScreenState();
}

class _PersonalInfomationScreenState extends State<PersonalInfomationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Scaffold(
                    appBar: CustomAppBar(
                      title: "Account Information",
                    ),
                    body: SingleChildScrollView(
                      child: Column(
                        children: [
                          CustomFormField(
                            title: "Old Password",
                            hasSuffix: true,
                            isObscured: true,
                            star: "",
                            isLong: false,
                          ),
                          CustomFormField(
                            title: "New Password",
                            hasSuffix: false,
                            isObscured: true,
                            star: "",
                            isLong: false,
                          ),
                          CustomFormField(
                            title: "Confirm password",
                            hasSuffix: false,
                            isObscured: true,
                            star: "",
                            isLong: false,
                          )
                        ],

                      ),
                    ),
                  ),


            ),
          ),
          Positioned(
              bottom: 30,
              child: Container(
                width: MediaQuery.of(context).size.width* 0.8,
                child: CustomButton(
                  title: "Continue",
                  onPressed: (){},
                ),
              )),
        ],
      ),
    );
  }
}

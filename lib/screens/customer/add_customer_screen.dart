import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';
import 'package:swypepay/widgets/Widgets/text_form_field.dart';
import 'package:swypepay/widgets/Widgets/custom_phone_picker.dart';

class AddCustomerScreen extends StatefulWidget {
  @override
  _AddCustomerScreenState createState() => _AddCustomerScreenState();
}

class _AddCustomerScreenState extends State<AddCustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Scaffold(
                appBar: CustomAppBar(
                  title: "Add Customer",
                ),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomFormField(
                      title: "Customer Name",
                      star: "",
                      hasSuffix: true,
                      isObscured: false,
                      isLong: false,
                    ),

                    CustomPhonePicker(
                      title: "Customer Phone Number" ,
                      star: " ",
                    )
                  ],
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
                  ))
            ],
          ),
        ),
      ),
    );
  }
}


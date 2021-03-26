import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';
import 'package:swypepay/widgets/Widgets/text_form_field.dart';

class AddSubAccount extends StatefulWidget {
  @override
  _AddSubAccountState createState() => _AddSubAccountState();
}

class _AddSubAccountState extends State<AddSubAccount> {
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
                  title: "Add Sub Account",
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomFormField(
                        title: "Sub Account Name",
                        hasSuffix: true,
                        isObscured: false,
                        star: "",
                        isLong: false,
                      ),
                      CustomFormField(
                        title: "Account No. *(7 Characters, No spaces)",
                        hasSuffix: true,
                        isObscured: false,
                        star: "",
                        isLong: false,
                      ),
                      CustomFormField(
                        title: "Description",
                        hasSuffix: false,
                        isObscured: false,
                        star: "",
                        isLong: true,
                      )
                    ],

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

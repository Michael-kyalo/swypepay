import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/number_box.dart';
import 'package:swypepay/widgets/Widgets/key_pad.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';
class PhoneVerificationScreen extends StatefulWidget {
  @override
  _PhoneVerificationScreenState createState() => _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: initialBody()
      ),
    );
  }


}
// ignore: camel_case_types
class initialBody extends StatefulWidget {
  @override
  _initialBodyState createState() => _initialBodyState();
}

// ignore: camel_case_types
class _initialBodyState extends State<initialBody> {
 String code = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "",
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 50.0,),
               Text("Phone Verification", style: Theme.of(context).textTheme.headline2),
               SizedBox(height: 20.0),
               RichText(
                   text: TextSpan(
                 text: "Enter the 4-digit code sent to you at \n+25470 000 00 00. ",
                 style: Theme.of(context).textTheme.bodyText1.copyWith(
                   fontSize: 16
                 ),
                 children: [
                   TextSpan(
                     text: "Change Merchant Code",
                     style: Theme.of(context).textTheme.headline2.copyWith(
                       color: Colors.blue,
                       fontSize: 16
                     )


                   )
                 ]
               )),

               SizedBox(height: 20.0),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: <Widget>[

                   CodeNumberBox(code: code.length> 0 ? code.substring(0, 1) : "", isWritten: code.length> 0 ? true: false),
                   CodeNumberBox(code :code.length > 1 ? code.substring(1, 2) : "",isWritten: code.length> 1 ? true: false),
                   CodeNumberBox(code :code.length > 2 ? code.substring(2, 3) : "", isWritten: code.length> 2 ? true: false),
                   CodeNumberBox(code :code.length > 3 ? code.substring(3, 4) : "",isWritten: code.length> 3 ? true: false),

                 ],
               ),



             ],
            ),
          ),
          Positioned(

              bottom: 0,
              child: Container(

            width: MediaQuery.of(context).size.width *0.9,
            height: MediaQuery.of(context).size.height * 0.4,
            child:   Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(text: TextSpan(
                      text: "Resend Code in ",
                      style: Theme.of(context).textTheme.headline2,
                      children: [
                        TextSpan(
                          text: "10 seconds",
                          style: Theme.of(context).textTheme.headline2.copyWith(
                              color: Colors.blue,
                          ))
                      ]
                    )),

                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle
                        ),

                        child: IconButton(icon: Icon(Icons.arrow_right_alt, color: Colors.white), onPressed: ()=> Navigator.of(context).pushNamed("login"))),

                  ],
                ),
                SizedBox(height: 10,),
                NumericPad(
                  onNumberSelected: (value){
                    setState(() {
                      if(value != -1){
                        if(code.length < 4){
                          code = code + value.toString();
                        }
                      }
                      else{
                        code = code.substring(0, code.length - 1);
                      }
                    });
                  },
                ),
              ],
            ),

          ))
        ],
      ),
    );
  }
}

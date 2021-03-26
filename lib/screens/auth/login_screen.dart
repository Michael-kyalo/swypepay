import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/text_form_field.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                child: Image.asset('assets/favicon.png'),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Text(
                                    "Hello, Welcome Back!",
                                    style: Theme.of(context).textTheme.headline1
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Text(
                                    "One Platform with all the ecommerce,\ncommunication and payment features \nyou need to start, run, and grow your business",
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: CustomFormField(
                                  title: "Merchant Code",
                                  star: " ",
                                  hasSuffix: true,
                                  isObscured: false,
                                  isLong: false,
                                )
                              ),
                              SizedBox(
                                height: 30.0,
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child:  CustomFormField(
                                  title: "Merchant Pin",
                                  star: " ",
                                  hasSuffix: false,
                                  isObscured: true,
                                  isLong: false,
                                )
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, "forgot");
                                      },
                                      child: Text(
                                        'Forgot password?',
                                        style: Theme.of(context).textTheme.bodyText1
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 10.0),
                                child: CustomButton(
                                  title: "Login",
                                  onPressed: (){
                                    Navigator.of(context).pushNamed('home');
                                  },
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

            ),
          ),
          Positioned(
              bottom: 10,
              child: Container(
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
                                      fontWeight: FontWeight.bold)),
                              TextSpan(text: ' and '),
                              TextSpan(
                                  text: 'Privacy policy',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold))
                            ])),
                    SizedBox(
                      height: 20.0,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Don't have an account?",
                            style: Theme.of(context).textTheme.bodyText1,
                            children: [
                              TextSpan(
                                  text: ' Sign Up',
                                  style: Theme.of(context).textTheme.headline2.copyWith(
                                      color: Colors.blue
                                  ),
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(context, "signup");
                                    })
                            ])),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

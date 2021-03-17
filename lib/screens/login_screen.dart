import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset('assets/splash.png'),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "Hello, Welcome Back!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                    "One Platform with all the ecommerce,\ncommunication and payment features \nyou need to start, run, and grow your business",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black45,
                  height: 1.2
                ),),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "Merchant Code",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextFormField(
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
            ),
            SizedBox(
              height: 32.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "Merchant pin",
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextFormField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
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
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: ElevatedButton(onPressed: (){}, child: SizedBox(
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Login", style:
                    TextStyle(color: Colors.white, fontSize: 20.0),),
                  ),
                ),
              )),
            ),
            RichText(
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
            SizedBox(
              height: 20.0,
            ),
            RichText(text: TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                color: Colors.black45
              ),
              children: [
                TextSpan(
                  text: ' Sign Up',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,

                  ),
                  recognizer: new TapGestureRecognizer()..onTap=(){
                    Navigator.pushNamed(context, "signup");
                  }
                )
              ]
            ))

          ],
        ),
      ),
    );
  }
}

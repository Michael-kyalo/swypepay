import 'package:flutter/material.dart';
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
                child: Container(
                     decoration: BoxDecoration(
                       color: Colors.white,
                       shape: BoxShape.circle
                     ),

                    child: IconButton(icon: Icon (Icons.arrow_back_rounded), color: Colors.blue, onPressed: ()=> Navigator.of(context).pop())),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
                child: Text("Please enter your merchant code to \nreset password", style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black45,
                  height: 1.2,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0 , horizontal: 16.0),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                child: ElevatedButton(onPressed: (){}, child: SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Continue", style:
                      TextStyle(color: Colors.white, fontSize: 20.0),),
                    ),
                  ),
                )),
              ),

            ],
        ),
      ),

    );
  }
}

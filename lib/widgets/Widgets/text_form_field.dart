import 'package:flutter/material.dart';
class CustomFormField extends StatelessWidget {
  final String title;
  final String star;
  final bool hasSuffix;
  final bool isObscured;
  final bool isLong;

  const CustomFormField({Key key, this.title, this.star, this.hasSuffix, this.isObscured, this.isLong}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(height: 20.0,),
        RichText(text: TextSpan(
            text: title,
            style: Theme.of(context).textTheme.headline2,
            children: [
              TextSpan(
                  text: star,
                  style: TextStyle(
                      color: Colors.red
                  )
              )
            ]
        )),
        SizedBox(height: 20.0,),
        TextFormField(
          autocorrect: isObscured ? false : true,
          obscureText: isObscured ? true : false,
          maxLines:  isLong ? 10 : 1,
          decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: hasSuffix? Icon(
                Icons.verified, color: Colors.blue,
              ): Icon( Icons.check_circle, size: 0,),
              focusedBorder:  OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1.5)
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0)


          ),
        ),
      ],

    );
  }
}

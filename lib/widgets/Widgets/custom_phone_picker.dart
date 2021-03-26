import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class CustomPhonePicker extends StatelessWidget {
  final String title;
  final String star;

  const CustomPhonePicker({Key key, this.title, this.star}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.0,
          ),
          RichText(
              text: TextSpan(
                  text: title,
                  style: Theme.of(context).textTheme.headline2,
                  children: [
                    TextSpan(text: star, style: TextStyle(color: Colors.red))
                  ])),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.white,
            child: IntlPhoneField(
              style: Theme.of(context).textTheme.headline2,
              countryCodeTextColor: Colors.black45,
              initialCountryCode: 'KE',
              decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "700 000 000",

                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.blue, width: 1.5)),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0)),
            ),
          ),
        ],
      ),
    );
  }
}

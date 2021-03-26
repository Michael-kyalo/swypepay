import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return       Container(
        width: MediaQuery.of(context).size.width*0.9,
        child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.blue, width: 1.5)),
              contentPadding: EdgeInsets.symmetric(
                  vertical: 20.0, horizontal: 10.0)),
        ));
  }
}

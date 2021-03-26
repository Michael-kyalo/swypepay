import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomButton({Key key, this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    ElevatedButton(
        onPressed: this.onPressed , child: SizedBox(
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(title, style:
          Theme.of(context).textTheme.bodyText2,),
        ),
      ),
    ));
  }
}

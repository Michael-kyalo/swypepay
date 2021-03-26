import 'package:flutter/material.dart';
class CodeNumberBox extends StatelessWidget {
 final String code;
 final bool isWritten;

  const CodeNumberBox({Key key, this.code, this.isWritten}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 60,
        height: 70,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            border: isWritten? Border.all(color: Colors.blue): Border.all(color: Colors.white)
          ),
          child: Center(
            child: Text(
              code,
              style: Theme.of(context).textTheme.headline1
            ),
          ),
        ),
      ),
    );
  }
}

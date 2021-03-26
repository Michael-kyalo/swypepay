import 'package:flutter/material.dart';


class CustomizedSwitch extends StatefulWidget {
  final bool isSwitched;

  const CustomizedSwitch({Key key, this.isSwitched}) : super(key: key);


  @override
  _CustomizedSwitchState createState() => _CustomizedSwitchState();
}

class _CustomizedSwitchState extends State<CustomizedSwitch> {
  bool switchedState;
  @override
  void initState() {
    // TODO: implement initState
    switchedState = widget.isSwitched;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Switch(
        activeColor: Colors.white,
        activeTrackColor: Colors.blue,
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.black45,
        value: switchedState, onChanged: (value){
      setState(() {
        switchedState = value;
      });
    });
  }
}

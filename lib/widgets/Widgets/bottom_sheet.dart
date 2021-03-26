import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/elevated_button.dart';

class BottomSheetWidget extends StatefulWidget {

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  bool isTicket;
  @override
  void initState() {
    // TODO: implement initState
   isTicket = true ;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
       initialChildSize: 0.2,
       maxChildSize: 0.8,
        minChildSize: 0.2,
        builder: (context, scrollController){
      return SingleChildScrollView(
        controller: scrollController ,
        dragStartBehavior: DragStartBehavior.start,
        child: isTicket ? OrderTicket():CustomerDetails(),
      );
    });
  }
  Widget OrderTicket(){
    return Container(
            child: Column(
              children: [
                Row(
                  children: [
                    CustomButton(
                      title: "Order Ticket",
                    )
                  ],
                )
              ],
            ),
    );
}
  Widget CustomerDetails(){
    return Container(

    );
  }

}

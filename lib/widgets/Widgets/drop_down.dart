import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final String valueChosen;
 final List valuesList;
 final String star;
 final String title;

 const CustomDropDown({ this.valueChosen, this.valuesList, this.star, this.title}) ;

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String choice;
  @override
  void initState() {
    // TODO: implement initState
    String choice = widget.valueChosen;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 20.0,),
        RichText(text: TextSpan(
            text:widget.title,
            style: Theme.of(context).textTheme.headline2,
            children: [
              TextSpan(
                  text: widget.star,
                  style: TextStyle(
                      color: Colors.red
                  )
              )
            ]
        )),
        SizedBox(height: 20.0,),

          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Colors.white
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(

                  hint: Text(widget.valueChosen),
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  value: choice,
                  onChanged: (newValue){
                    setState(() {
                      choice = newValue;
                    });
                  },
                  items: widget.valuesList.map((valueItem){
                    return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem));
                  }).toList(),





                ),
              ),
            ),
          ),
        ]
    );
  }
}


// class CustomDropDown extends StatelessWidget {
//   String valueChosen;
//   List valuesList;
//   String star;
//   String title;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: 20.0,),
//         RichText(text: TextSpan(
//             text: 'Business Type',
//             style: Theme.of(context).textTheme.headline2,
//             children: [
//               TextSpan(
//                   text: '*',
//                   style: TextStyle(
//                       color: Colors.red
//                   )
//               )
//             ]
//         )),
//         SizedBox(height: 20.0,),
//         Theme(
//           data: Theme.of(context).copyWith(
//               canvasColor: Colors.white
//           ),
//           child: DropdownButton(
//             hint: Text('Business Type'),
//             isExpanded: true,
//             icon: Icon(Icons.arrow_drop_down),
//             value: typeChosen,
//             onChanged: (newValue){
//               setState(() {
//                 typeChosen = newValue;
//               });
//             },
//             items: typlist.map((valueItem){
//               return DropdownMenuItem(
//                   value: valueItem,
//                   child: Text(valueItem));
//             }).toList(),
//
//
//
//
//
//           ),
//         ),
//       ],
//     );
//   }
// }

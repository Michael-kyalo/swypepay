import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Lists/online_order_list_item.dart';

class OnlineOrdersTab extends StatefulWidget {
  @override
  _OnlineOrdersTabState createState() => _OnlineOrdersTabState();
}

class _OnlineOrdersTabState extends State<OnlineOrdersTab> {
  List sortList = [
    "Date",
    "Price"
  ];
  List ordersList = [
    "Orders",
    "Prices"
  ];
  String sortChosen = "Date";
  String orderChosen = "Orders";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width *0.2,
                height: 50,
                child: Center(child: Text("Sort By",  style: Theme.of(context).textTheme.bodyText1,))),
            Container(
              width: MediaQuery.of(context).size.width *0.2,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal:5),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(

                  hint: Text(sortChosen),
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  value: sortChosen,
                  onChanged: (newValue){
                    setState(() {
                      sortChosen = newValue;
                    });
                  },
                  items: sortList.map((valueItem){
                    return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem));
                  }).toList(),





                ),
              ),
            ),
            Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal:5),
                width: MediaQuery.of(context).size.width *0.2,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(

                  hint: Text(orderChosen),
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  value: orderChosen,
                  onChanged: (newValue){
                    setState(() {
                      orderChosen = newValue;
                    });
                  },
                  items: ordersList.map((valueItem){
                    return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem));
                  }).toList()
            ),)),
            Container(
              width: MediaQuery.of(context).size.width *0.2,
              color: Colors.white,

              padding: EdgeInsets.all(10),
              child: Row(
               children: [
                 Text("List",  style: Theme.of(context).textTheme.bodyText1,),
                 Icon(
                   Icons.list,
                   color: Colors.black45,
                 )
               ],
              ),
            )
          ],
        ),

        SizedBox(
          height:20 ,
        ),
        Expanded(child: ListView.builder(
          itemCount: 1,
            itemBuilder: (context, index){return OnlineOrderListItem();}))

      ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:swypepay/models/shop_item.dart';
import 'package:swypepay/widgets/Lists/shop_items_list_item.dart';

class ShopItemsTab extends StatefulWidget {

  @override
  _ShopItemsTabState createState() => _ShopItemsTabState();
}

class _ShopItemsTabState extends State<ShopItemsTab> {
  String type = "list";
  List<ShopItem> itemList = [
    ShopItem("assets/image.png","Chair","Ksh 1000",4, true),
    ShopItem("assets/image.png","Chair","Ksh 1000",4, false),
    ShopItem("assets/image.png","Chair","Ksh 1000",4, true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           Navigator.of(context).pushNamed("addproduct");
        },
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),

      ),
      body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10.0),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: type == "list" ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(10)

              ),
              child:  Icon(
                Icons.list, color:type == "list" ? Colors.white :Colors.black45,

            ),),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: type == "list" ? Colors.white : Colors.blue,
                  borderRadius: BorderRadius.circular(10)

              ),
              child:  Icon(
                Icons.grid_view, color : type == "list" ? Colors.black45 : Colors.white,

              ),),
          ],
        ),

        SizedBox(height: 10,),
        Expanded(
          child: type == "list" ? ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (context, index){
              return ShopItemsListItem(
                shopItem: itemList[index],
              );
            },
          ): Container()
        ),
      ],
      ) ,
    );
  }
}

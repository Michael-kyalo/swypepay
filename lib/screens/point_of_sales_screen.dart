import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/app_bar.dart';
import 'package:swypepay/widgets/Widgets/drop_down.dart';
import 'package:swypepay/models/shop_item.dart';
import 'package:swypepay/widgets/Lists/cart_list_item.dart';
import 'package:swypepay/widgets/Widgets/search_bar.dart';


class PointOfSaleScreen extends StatefulWidget {
  @override
  _PointOfSaleScreenState createState() => _PointOfSaleScreenState();
}

class _PointOfSaleScreenState extends State<PointOfSaleScreen> {
  List categoriesList = [
    "Categories",
    "Category 1",
    "Category 2"
  ];
  String valueChosen = "Categories";

  List<ShopItem> itemList = [
    ShopItem("assets/image.png","Chair","Ksh 1000",4, true),
    ShopItem("assets/image.png","Chair","Ksh 1000",4, false),
    ShopItem("assets/image.png","Chair","Ksh 1000",4, true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Scaffold(
              appBar: CustomAppBar(
                title: "Point Of Sale",
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  CustomSearchBar(),
                  Container(
                    width: 100,
                    child: CustomDropDown(
                      valueChosen: valueChosen,
                      valuesList: categoriesList,
                      star: "",
                      title: "",
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      mainAxisExtent: 200,
                      childAspectRatio: 3/2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                        itemCount: itemList.length,itemBuilder: (context, index){
                      return CartListItem(
                        shopItem: itemList[index],
                      );
                        }),
                  )
                ],


              ),

          ),
        ),
      ),

    );
  }
}

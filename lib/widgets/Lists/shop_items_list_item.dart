import 'package:flutter/material.dart';
import 'package:swypepay/models/shop_item.dart';
import 'package:swypepay/widgets/Widgets/custom_switch.dart';

class ShopItemsListItem extends StatelessWidget {
  final ShopItem shopItem;

  const ShopItemsListItem({Key key, this.shopItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12, width: 0.5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 130,
                child: Image.asset(shopItem.image),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shopItem.name,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Price  " + shopItem.price,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Available Stock  " + shopItem.quantity.toString(),
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "On Offer",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      CustomizedSwitch(
                        isSwitched: shopItem.isOnOffer,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
            top: 30,
            right: 20,
            child: Icon(
              Icons.more_vert,
              color: Colors.black45,
            )),
        Positioned(
          bottom: 30,
          right: 10,
          child: Container(
            margin: EdgeInsets.only(right: 10.0),
            height: 40,
            width: 35,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.delete_forever_outlined,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 10,
          child: Container(
            margin: EdgeInsets.only(right: 10.0),
            height: 30,
            width: 70,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.black45,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.image_outlined, color: Colors.white, size: 12,),
                Text(
                  "4 Images",
                  style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white, fontSize: 8),
                )

              ],
            )
          ),
        ),
      ],
    );
  }
}

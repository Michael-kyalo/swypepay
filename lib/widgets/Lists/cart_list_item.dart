import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/models/shop_item.dart';

class CartListItem extends StatefulWidget {
  final ShopItem shopItem;

  const CartListItem({Key key, this.shopItem}) : super(key: key);

  @override
  _CartListItemState createState() => _CartListItemState();
}

class _CartListItemState extends State<CartListItem> {
  int amount ;
  @override
  void initState() {
    // TODO: implement initState
    amount = widget.shopItem.quantity;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          width: 150,
          height: 300,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: Image.asset(widget.shopItem.image),
              ),
              Text(
                widget.shopItem.name,
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.shopItem.price,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (amount > 0) {
                          amount -= 1;
                        }
                      });
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Center(
                        child: Text(
                          amount.toString(),
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      )),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: () {
                      setState(() {
                        amount += 1;
                      });
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(4.0)),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 10,
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class OnlineOrderListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.black12, width: 0.5),
          )),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 100,
                child: Image.asset("assets/image.png"),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "#010552",
              style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "1 x Adidas Originals",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),

                  Text(
                      "Trefoil Overhead Hoodie",
                      style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ],

          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              SizedBox(height: 20,),
              Text(
                "Total",
                style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 8),
              ),
              SizedBox(height: 10,),
              Text(
                "Ksh 45.00",
                style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.orange),
              ),

            ],
          ),

        ],
      ),
    );
  }
}

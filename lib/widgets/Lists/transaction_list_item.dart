import "package:flutter/material.dart";

class TransactionListItem extends StatelessWidget {
  final int type;

  const TransactionListItem({Key key, this.type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.black12, width: 0.5),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  margin: EdgeInsets.only(right: 10.0),
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: type == 0 ? Colors.blue[50] : Colors.red[50],borderRadius: BorderRadius.circular(10)

                      ),
                      child: type ==0 ? Icon(
                        Icons.arrow_downward, color: Colors.blue,
                      ) : Icon(
                        Icons.arrow_upward, color: Colors.red,
                      ) ,
                    ),
                SizedBox(width: 10,),
                Container(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Sender Name",
                          style: Theme.of(context)
                              .textTheme
                              .headline1.copyWith(fontSize: 12)
                      ),
                      Text(
                          "Processing fees",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1.copyWith(fontSize: 10)
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),


          Container(
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "+ Ksh 200",
                    style: Theme.of(context)
                        .textTheme
                        .headline1.copyWith(fontSize: 10)
                ),
                Text(
                    "7 Jan, 2021",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1.copyWith(fontSize: 10, color: Colors.blue)
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}

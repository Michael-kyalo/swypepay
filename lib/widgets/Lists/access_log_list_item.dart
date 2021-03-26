import 'package:flutter/material.dart';
class AccessLogListItem extends StatelessWidget {
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
          ),
          
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [

                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  height: 40,
                  width: 3,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                     color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(4)
                  ),
                  

                ),
                SizedBox(width: 5,),

                Container(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "IP Address",
                          style: Theme.of(context)
                              .textTheme
                              .headline1.copyWith(fontSize: 12)
                      ),
                      SizedBox(height: 5,),
                      Text(
                          "Country Name",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1.copyWith(fontSize: 10)
                      ),
                      SizedBox(height: 5,),
                      Text(
                          "City",
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "2020-06-02",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1.copyWith(fontSize: 10)
                ),
                SizedBox(height: 5,),
                Text(
                    "12:12:12",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1.copyWith(fontSize: 10,),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}

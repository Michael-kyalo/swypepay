import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swypepay/models/chat.dart';

class ChatListItem extends StatelessWidget {
  final Chat chat;

  const ChatListItem({Key key, this.chat}) : super(key: key);
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
              border: Border(
                bottom: BorderSide(color: Colors.black12, width: 0.5),
              )),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 100,
                child: Column(

                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45,width:  0.5)
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: chat.type== 0 ? Colors.red : chat.type == 1 ? Colors.teal :Colors.blue
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      chat.name,
                      style: Theme.of(context)
                          .textTheme
                          .headline1.copyWith(fontSize: 12)
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      chat.message,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1.copyWith(fontSize: 10)
                  ),

                ],
              )
            ],
          ),
        ),

        Positioned(right: 10,bottom: 10,
        child: Container(
          width: 60,
          height: 25,
          decoration: BoxDecoration(
            border: Border.all(
              color: chat.type== 0 ? Colors.red : chat.type == 1 ? Colors.teal :Colors.blue,
              width: 1
            ),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: Text(
              chat.type == 0 ? "Error" : chat.type == 1 ? "Sent" : "Pending",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1.copyWith(fontSize: 8, color: chat.type== 0 ? Colors.red : chat.type == 1 ? Colors.teal :Colors.blue, )
            ),
          ),
        ),),
        Positioned(
            bottom:10,
            left: 60 ,child:     Text(
            chat.date,
            style: Theme.of(context)
                .textTheme
                .bodyText1.copyWith(fontSize: 10)
        ),)
      ],
    );
  }
}

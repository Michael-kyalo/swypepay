import 'package:flutter/material.dart';
import 'chat_list_item.dart';

class ChatList extends StatelessWidget {
 final List list;

  const ChatList({Key key, this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: list.length,
        itemBuilder: (context,index){
          return ChatListItem(
            chat: list[index],
          );
        });
  }
}

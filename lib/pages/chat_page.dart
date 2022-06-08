import 'package:flutter/material.dart';
import 'package:proyecto_clon_wasap/Widgets/item_chat_widget.dart';
import 'package:proyecto_clon_wasap/data/data_dummy.dart';

class ChatPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          print(chatList[index]);
          return ItemChatWidget(
            chatModel: chatList[index],
          );
        },
      ),
    );
  }
}

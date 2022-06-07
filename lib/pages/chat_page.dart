import 'package:flutter/material.dart';
import 'package:proyecto_clon_wasap/Widgets/item_chat_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ItemChatWidget();
        },
      ),
    );
  }
}

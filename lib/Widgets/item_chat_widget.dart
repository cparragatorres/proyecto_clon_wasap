import 'package:flutter/material.dart';
import 'package:proyecto_clon_wasap/Widgets/item_chat_widget.dart';
import 'package:proyecto_clon_wasap/models/chat_model.dart';
import 'package:proyecto_clon_wasap/pages/chat_datail_page.dart';

class ItemChatWidget extends StatelessWidget {

  ChatModel chatModel;

  ItemChatWidget({
  required this.chatModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatDetailPage()));
        },
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          radius: 24,
          backgroundImage: NetworkImage(
            chatModel.avatarURL,
          ),
        ),
        title: Text(
          chatModel.username,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          chatModel.isTyping ? "Typing..." : chatModel.message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13.0,
            color: chatModel.isTyping ? Color(0xff00A884) : Colors.black.withOpacity(0.45),
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                fontSize: 12.0,
                // color: Colors.black.withOpacity(0.45),
                color: chatModel.countMessage > 0 ? Color(0xff00A884) : Colors.black.withOpacity(0.45),
              ),
            ),
            chatModel.countMessage >0 ? Container(
              height: 20.0,
              width: 20.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff00A884),
              ),
              alignment: Alignment.center,
              child: Text(
                chatModel.countMessage.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            ) : Container(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}

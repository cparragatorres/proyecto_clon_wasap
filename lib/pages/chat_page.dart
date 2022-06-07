import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 24,
              backgroundImage: NetworkImage(
                "https://acortar.link/pwag9x",
              ),
            ),
            title: Text(
              "Fatima de las Nieves",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              "He enviado los archivos que solicitaste, por favor los revisas",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13.0,
              ),
            ),
          );
        },
      ),
    );
  }
}

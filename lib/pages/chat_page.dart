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
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "20:24",
                  style: TextStyle(
                    fontSize: 12.0,
                    // color: Colors.black.withOpacity(0.45),
                    color: Color(0xff00A884),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff00A884),
                  ),
                  child: Text(
                    "9",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

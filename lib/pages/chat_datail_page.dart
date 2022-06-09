import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage(
                "https://acortar.link/pwag9x",
              ),
            ),
            SizedBox(
              width: 6.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ximena Lopez"),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  "Last seen today 11:39 AM",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.60),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

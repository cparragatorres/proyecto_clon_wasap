import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          return Container(
            margin: EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black12,
                radius: 24,
                backgroundImage: NetworkImage(
                  "https://acortar.link/pwag9x",
                ),
              ),
              title: Text(
                "Romina",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.call_made_rounded,
                    size: 16.0,
                    color: Color(0xff01c851),
                  ),
                  SizedBox(width: 6.0,),
                  Text(
                    "Ayer 11:02 p.m.",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black.withOpacity(0.45),
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.call,
                color: Color(0xff01c851),
              ),
            ),
          );
        },
      ),
    );
  }
}

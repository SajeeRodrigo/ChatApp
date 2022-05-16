import 'package:chatapp/constants.dart';
import 'package:chatapp/screens/messages/components/body.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          SizedBox(
            width: kDefaultPadding * 0.75,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kristin Watson",
                style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Active 3m ago",
                  style: TextStyle(fontSize: 12),
                )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
        onPressed: () {}, 
        icon: Icon(Icons.local_phone),
        ),
        IconButton(
        onPressed: () {}, 
        icon: Icon(Icons.videocam),
        ),
        SizedBox(width: kDefaultPadding /2),
        ],
    );
  }
}
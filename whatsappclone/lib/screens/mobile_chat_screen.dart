import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsappclone/constants/colors.dart';
import 'package:whatsappclone/widgets/chat_list.dart';

import '../constants/info.dart';
import '../widgets/my_message_card.dart';

class MobileChatScreen extends StatefulWidget {
  const MobileChatScreen({super.key});

  @override
  State<MobileChatScreen> createState() => _MobileChatScreenState();
}

class _MobileChatScreenState extends State<MobileChatScreen> {
  late TextEditingController _msgController;

  @override
  void initState() {
    _msgController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _msgController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Row(children: [
          CircleAvatar(
              backgroundImage: NetworkImage(info[1]['profilePic'].toString())),
          SizedBox(
            width: 10,
          ),
          Text(info[6]['name'].toString())
        ]),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.video_call,
                size: 20,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                Icons.call,
                size: 20,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                Icons.more_vert,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatList()),
          TextField(
            controller: _msgController,
            decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.attach_money,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                // focusedBorder: InputBorder.none,
                hintText: 'Type a message',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)),
                contentPadding: EdgeInsets.all(10)),
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

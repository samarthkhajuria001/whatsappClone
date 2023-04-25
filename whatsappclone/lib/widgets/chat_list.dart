import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsappclone/constants/colors.dart';
import 'package:whatsappclone/widgets/sender_message_card.dart';

import '../constants/info.dart';
import 'my_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString(),
            );
          } else {
            return SenderMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString(),
            );
          }
        });
  }
}

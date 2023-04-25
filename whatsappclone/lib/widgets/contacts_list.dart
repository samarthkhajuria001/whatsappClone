import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsappclone/constants/colors.dart';
import 'package:whatsappclone/main.dart';

import '../constants/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(mobileChatScreenRoute);
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              info[index]['profilePic'].toString())),
                      title: Text(info[index]['name'].toString()),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(info[index]['message'].toString()),
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Divider(
                      color: dividerColor,
                      indent: 85,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

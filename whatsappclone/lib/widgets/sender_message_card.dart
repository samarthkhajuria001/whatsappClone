import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsappclone/constants/colors.dart';

class SenderMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const SenderMessageCard(
      {super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
            color: senderMessageColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            elevation: 1,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, left: 10, right: 30, bottom: 20),
                  child: Text(
                    message,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Positioned(
                    bottom: 4,
                    right: 10,
                    child: Row(
                      children: [
                        Text(
                          date,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white60),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    )),
              ],
            )),
      ),
    );
  }
}

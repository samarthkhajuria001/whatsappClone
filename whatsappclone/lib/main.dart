import 'package:flutter/material.dart';
import 'package:whatsappclone/constants/colors.dart';
import 'package:whatsappclone/responsive/responsive_layout.dart';
import 'package:whatsappclone/screens/mobile_chat_screen.dart';
import 'package:whatsappclone/screens/mobile_screen_layout.dart';
import 'package:whatsappclone/screens/web_screen_layout.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
    routes: {
      '/': (context) => const RresponsiveLayout(
          mobileLayout: MobileScreenLayout(), webLayout: WebScreenLayout()),
      mobileChatScreenRoute: (context) => const MobileChatScreen(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        centerTitle: true,
      ),
    );
  }
}

const mobileChatScreenRoute = '/chatscreen';

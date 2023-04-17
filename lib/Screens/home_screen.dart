import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/call_screen.dart';
import 'package:whatsapp_ui/Screens/chat_screen.dart';
import 'package:whatsapp_ui/Screens/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF008069),
          automaticallyImplyLeading: false,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              letterSpacing: 1,
            ),
          ),
          elevation: 1,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorWeight: 3,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            splashFactory: NoSplash.splashFactory,
            tabs: [
              Tab(
                text: ('Chat'),
              ),
              Tab(
                text: ('Status'),
              ),
              Tab(
                text: ('Calls'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}

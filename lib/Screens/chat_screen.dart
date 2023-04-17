import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/Mypic.png'),
            ),
            title: Text('Usaid Asif'),
            subtitle: Text('Hey! I am using WhatsApp'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF008069),
        child: const Icon(Icons.chat),
      ),
    );
  }
}

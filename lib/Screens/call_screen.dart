import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF008069),
        child: const Icon(Icons.add_ic_call),
      ),
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/Mypic.png'),
            ),
            title: Text('Usaid Asif'),
            subtitle: Text('Share a link for your whatsapp call'),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Recent'),
            ),
          ),
          ListView.builder(
            itemCount: 8,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/Mypic.png'),
                ),
                title: Text('Usaid Asif'),
                subtitle: Text('Yesterday, 10:30 AM'),
                trailing: Icon(
                  Icons.call,
                  color: Color(0xFF008069),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

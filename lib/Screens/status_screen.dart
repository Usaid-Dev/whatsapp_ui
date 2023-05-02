import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/Mypic.png'),
            ),
            title: Text('My Status'),
            subtitle: Text('Tap here to update the status '),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Viewed updates'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/Mypic.png'),
                  ),
                  title: Text('Usaid Asif'),
                  subtitle: Text('Today, 12:30 PM'),
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
            text: const TextSpan(
              text: "Your status updates are end to end encrypted",
              style: TextStyle(
                color: Color(0xFF008069),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xFF008069),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xFF008069),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

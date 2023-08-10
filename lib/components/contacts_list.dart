import 'package:flutter/material.dart';
import 'package:whatsapp_ui/const/colors.dart';
import '../const/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          final contact = info[index];
          final String name = contact['name']!;
          final String profilePic = contact['profilePic']!;
          final String message = contact['message']!;
          final String time = contact['time']!;
          return ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(profilePic),
            ),
            title: Text(name),
            subtitle: Text(message),
            trailing: Text(
              time,
              style: const TextStyle(color: titleColor, fontSize: 12),
            ),
          );
        },
      ),
    );
  }
}

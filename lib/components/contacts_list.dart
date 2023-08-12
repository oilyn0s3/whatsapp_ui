import 'package:flutter/material.dart';
import 'package:whatsapp_ui/const/colors.dart';
import '../const/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: info.length,
      itemBuilder: (context, index) {
        final contact = info[index];
        final String name = contact['name'].toString();
        final String profilePic = contact['profilePic'].toString();
        final String message = contact['message'].toString();
        final String time = contact['time'].toString();
        return InkWell(
          onTap: () {},
          child: ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(profilePic),
            ),
            title: Text(
              name,
              style: const TextStyle(fontSize: 18),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                message,
                // style: const TextStyle(fontSize: 15),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            trailing: Text(
              time,
              style: const TextStyle(color: titleColor, fontSize: 12),
            ),
          ),
        );
      },
    );
  }
}

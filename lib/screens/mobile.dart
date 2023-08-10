import 'package:flutter/material.dart';
import 'package:whatsapp_ui/components/contacts_list.dart';
import '../const/colors.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp", style: TextStyle(color: titleColor)),
          backgroundColor: appBarColor,
          iconTheme: const IconThemeData(color: titleColor),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          bottom: const TabBar(
            tabs: [
              // Tab(icon: Icon(Icons.groups)),
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
            indicatorColor: tabColor,
            // isScrollable: true,
            labelColor: tabColor,
            labelPadding: EdgeInsets.symmetric(horizontal: 6),
            unselectedLabelColor: titleColor,
            indicatorWeight: 4,
          ),
        ),
        body: const ContactsList(),
      ),
    );
  }
}

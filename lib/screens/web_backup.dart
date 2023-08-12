import 'package:flutter/material.dart';

import '../components/contacts_list.dart';
import '../const/colors.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          constraints: const BoxConstraints(
            minWidth: 300,
            maxWidth: 450,
          ),
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title:
                    const Text("WhatsApp", style: TextStyle(color: titleColor)),
                backgroundColor: appBarColor,
                iconTheme: const IconThemeData(color: titleColor),
                elevation: 0,
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert)),
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
          ),
        ),
        Flexible(
          child: Container(
            // width: double.infinity,
            color: const Color.fromARGB(255, 0, 68, 17),
            // constraints: BoxConstraints(
            //     maxWidth: MediaQuery.of(context).size.width * 0.8),
          ),
        )
      ],
    );
  }
}
// MediaQuery.of(context).size.width*0.8
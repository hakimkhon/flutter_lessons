import 'package:flutter/material.dart';

class TelegramInfoPage extends StatelessWidget {
  TelegramInfoPage({super.key});
  final List<Map> users = [
    {
      "name": "Alex",
      "subtitle": "Today go to out",
      "photo": "https://randomuser.me/api/portraits/men/7.jpg",
      "data": "Today",
    },
    {
      "name": "Alex",
      "subtitle": "Today go to out",
      "photo": "https://randomuser.me/api/portraits/women/15.jpg",
      "data": "Today",
    },
    {
      "name": "Alex",
      "subtitle": "Today go to out",
      "photo": "https://randomuser.me/api/portraits/men/47.jpg",
      "data": "Today",
    },
    {
      "name": "Alex",
      "subtitle": "Today go to out",
      "photo": "https://randomuser.me/api/portraits/women/74.jpg",
      "data": "Today",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Telegram app"),),
      body: SafeArea(
        child: Column(
          children: [
            for (Map item in users)
              Container(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 34,
                        backgroundImage: NetworkImage(item["photo"]),
                      ),
                      Column(children: [
                        Text(item["name"]),
                        Text(item["subtitle"]),
                      ],)
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

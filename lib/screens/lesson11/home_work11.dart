import 'package:flutter/material.dart';

class HomeWork11 extends StatelessWidget {
  const HomeWork11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: null,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: null,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: null,
      //     ),
      //   ],
      //   // currentIndex: _selectedIndex,
      //   // selectedItemColor: Colors.amber[800],
      //   // onTap: _onItemTapped,
      // ),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.camera_alt_outlined),
                  Text("Instagram"),
                ],
              ),
            ),
            SizedBox(
              width: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.tv),
                  Icon(Icons.send_outlined),
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        // height: double.infinity,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    CircleAvatar(
                      radius: 43,
                      backgroundColor: Color.fromARGB(172, 184, 33, 22),
                      child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://randomuser.me/api/portraits/women/74.jpg')),
                    ),
                    Text("Your story",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ]),
                  Column(children: [
                    CircleAvatar(
                      radius: 43,
                      backgroundColor: Color.fromARGB(172, 184, 33, 22),
                      child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://randomuser.me/api/portraits/women/64.jpg')),
                    ),
                    Text("Your story",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ]),
                  Column(children: [
                    CircleAvatar(
                      radius: 43,
                      backgroundColor: Color.fromARGB(172, 184, 33, 22),
                      child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://randomuser.me/api/portraits/women/54.jpg')),
                    ),
                    Text("Your story",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ]),
                  Column(children: [
                    CircleAvatar(
                      radius: 43,
                      backgroundColor: Color.fromARGB(172, 184, 33, 22),
                      child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://randomuser.me/api/portraits/women/34.jpg')),
                    ),
                    Text("Your story",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ]),
                ],
              ),
            ),
            Container(
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                    child: const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/women/88.jpg')),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    // height: 100,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              Text(
                                "jousha_Id",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(" "),
                              Icon(
                                Icons.task,
                                size: 14,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                        Text("Tokyo, Japan"),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.more_horiz,
                    size: 26,
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Image.asset(
                "assets/images/Rectangle.png",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            height: 100,
            // color: Colors.yellow,
          ),
          Container(
            // height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            // color: Colors.yellow[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.15,
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/women/88.jpg')),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.65,
                  // height: 100,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Text("jousha_Id", style: TextStyle(fontWeight: FontWeight.w600),),
                            Text(" "),
                            Icon(Icons.task, size: 14, color: Colors.blue,),
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
        ],
      ),
    ));
  }
}

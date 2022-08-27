import 'package:flutter/material.dart';
import 'package:task2/constants/icons.dart';
import 'package:task2/constants/style.dart';
import 'package:task2/screens/pickup_date/pickup_date_screen.dart';
import 'package:task2/widgets/chat_bottom/chat_bottom.dart';
import 'package:task2/widgets/chat_container/chat_container.dart';

import '../../widgets/clip_path/custom_clip_path.dart';
import '../../widgets/clip_shadow/clip_shadow_path.dart';

class ChatScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        elevation: 0,
        leading: BackButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PickUpDateScreen()));
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, color: Colors.white))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          ClipShadowPath(
              shadow: const BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 8),
                  blurStyle: BlurStyle.solid,
                  blurRadius: 3,
                  spreadRadius: 3),
              clipper: CustomClipPath(),
              child: Stack(
                children: [
                  Container(
                      decoration: const BoxDecoration(color: blue, boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            offset: Offset(50, 50),
                            blurRadius: 2)
                      ]),
                      height: 400),
                  Positioned(
                      top: 20,
                      left: 30,
                      child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Image.asset(chatIcon))),
                  const Positioned(
                      top: 100,
                      left: 30,
                      child: Text("Hi There!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))),
                  Positioned(
                      top: 150,
                      left: 30,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.70,
                        child: const Text(
                            "welcome to Online Service. How can we help you todays?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white)),
                      ))
                ],
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              ChatContainer(isSender: true, message: "Sender message"),
              SizedBox(
                height: 40,
                child: Center(child: Text("July 25 23:24")),
              ),
              ChatContainer(
                recieverName: "Reciever",
                time: 10,
                message: "Message Content",
              ),
              ChatContainer(isSender: true, message: "Sender message"),
              SizedBox(height: 20),
              ChatContainer(
                recieverName: "Reciever",
                time: 10,
                message: "Message Content",
              ),
              ChatContainer(isSender: true, message: "Sender message"),
              ChatContainer(isSender: true, message: "Sender message"),
              SizedBox(height: 20)
            ],
          ),
          ChatBottom(controller: controller)
        ]),
      )),
    );
  }
}

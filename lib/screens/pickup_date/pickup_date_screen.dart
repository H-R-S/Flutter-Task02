import 'package:flutter/material.dart';
import 'package:task2/constants/style.dart';
import 'package:task2/screens/chat/chat_screen.dart';
import 'package:task2/screens/package/package_screen.dart';
import 'package:task2/widgets/elevated_button/my_elevated_botton.dart';
import 'package:task2/widgets/expanded_container/expanded_container.dart';
import 'package:task2/widgets/pickup_container/pick_up_container.dart';
import 'package:task2/widgets/repeat_pickup/repeat_pickup_container.dart';
import 'package:task2/widgets/time_slot/time_slot_container.dart';

class PickUpDateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Pickup Date",
            style: TextStyle(color: blue, fontSize: 20)),
        elevation: 10,
        leading: BackButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PackageScreen()));
            },
            color: blue),
        backgroundColor: lightBlue,
        shadowColor: blue,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
              icon: const Icon(Icons.menu, color: blue))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20).copyWith(top: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(),
                  Text("When would you like to pickup?",
                      style: TextStyle(color: Colors.grey, fontSize: 18)),
                  Icon(Icons.calendar_month, color: blue, size: 40)
                ],
              ),
              const SizedBox(height: 40),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PickUpContainer(
                        color: Colors.grey,
                        day: "Fri",
                        date: "25 Jun",
                        pastDay: "yesterday"),
                    const SizedBox(width: 10),
                    PickUpContainer(
                        color: blue,
                        day: "Sat",
                        date: "26 Jun",
                        pastDay: "Today"),
                    const SizedBox(width: 10),
                    PickUpContainer(
                        dayColor: Colors.black,
                        color: Colors.white,
                        day: "Sun",
                        date: "27 Jun",
                        pastDay: "Tomorrow"),
                    const SizedBox(width: 10),
                    PickUpContainer(
                        color: red,
                        day: "Mon",
                        date: "29 Jun",
                        pastDay: "Block day"),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const SizedBox(
                  height: 40,
                  child: Text("When would you like to pickup?",
                      style: TextStyle(color: Colors.grey, fontSize: 18))),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                TImeSlotContainer(time: "7am - 9pm"),
                TImeSlotContainer(time: "7am - 9pm"),
                TImeSlotContainer(time: "7am - 9pm")
              ]),
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                TImeSlotContainer(time: "7am - 9pm"),
                TImeSlotContainer(time: "7am - 9pm")
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  RepeatPickupContainer(),
                  const SizedBox(height: 40),
                  const SizedBox(
                      height: 40,
                      child: Text("How often Repeat?",
                          style: TextStyle(color: Colors.grey, fontSize: 18))),
                  const ExpandedContainer(title: "Every Week"),
                  const SizedBox(height: 40),
                  const SizedBox(
                      height: 40,
                      child: Text("How Many times?",
                          style: TextStyle(color: Colors.grey, fontSize: 18))),
                  const ExpandedContainer(title: "1"),
                  const SizedBox(height: 40),
                ],
              ),
              MyElevatedButton()
            ],
          ),
        ),
      )),
    );
  }
}

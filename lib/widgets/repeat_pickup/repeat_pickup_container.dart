import 'package:flutter/material.dart';
import 'package:task2/constants/style.dart';

class RepeatPickupContainer extends StatefulWidget {
  @override
  State<RepeatPickupContainer> createState() => _RepeatPickupContainerState();
}

class _RepeatPickupContainerState extends State<RepeatPickupContainer> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10).copyWith(left: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 3,
                color: Colors.grey,
                offset: Offset(0, 5))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Repeat Pickup',
              style: TextStyle(color: Colors.grey, fontSize: 20)),
          Switch(
              activeColor: Colors.white,
              activeTrackColor: blue,
              value: isTrue,
              onChanged: (value) {
                setState(() {
                  isTrue = value;
                });
              })
        ],
      ),
    );
  }
}

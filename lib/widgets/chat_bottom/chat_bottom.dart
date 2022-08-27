import 'package:flutter/material.dart';
import 'package:task2/constants/style.dart';

class ChatBottom extends StatelessWidget {
  final TextEditingController controller;

  const ChatBottom({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 3,
                  color: Colors.grey,
                  offset: Offset(0, 5))
            ], borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width * 0.65,
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "write a reply..."),
            ),
          ),
          const Icon(Icons.emoji_emotions, color: Colors.grey),
          const Icon(Icons.image, color: Colors.grey),
          const Icon(Icons.attach_file, color: Colors.grey),
          const Icon(Icons.send, color: blue)
        ],
      ),
    );
  }
}

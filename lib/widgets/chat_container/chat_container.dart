import 'package:flutter/material.dart';
import 'package:task2/constants/style.dart';

class ChatContainer extends StatelessWidget {
  final bool isSender;
  final String message;
  final String recieverName;
  final num time;

  const ChatContainer(
      {required this.message,
      this.isSender = false,
      this.time = 0,
      this.recieverName = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          if (isSender != true)
            Row(
              children: [
                Stack(
                  children: const [
                    CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 40,
                        )),
                    Positioned(
                        right: 0,
                        bottom: 10,
                        child: Icon(Icons.circle, color: green))
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(recieverName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    const SizedBox(height: 5),
                    Text("$time min ago")
                  ],
                )
              ],
            ),
          if (isSender != true) const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.50,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 3,
                    color: Colors.grey,
                    offset: Offset(0, 5))
              ],
              color: isSender ? blue : Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Text(message,
                style: TextStyle(
                    fontSize: 18,
                    color: isSender ? Colors.white : Colors.grey.shade700)),
          ),
        ],
      ),
    );
  }
}

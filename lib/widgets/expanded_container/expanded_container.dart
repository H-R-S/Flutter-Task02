import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpandedContainer extends StatelessWidget {
  final String title;

  const ExpandedContainer({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
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
      child: ExpansionTile(
        title: Text(title,
            style: const TextStyle(color: Colors.grey, fontSize: 20)),
        children: const [SizedBox(height: 40)],
      ),
    );
  }
}

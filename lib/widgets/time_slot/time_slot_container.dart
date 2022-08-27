import 'package:flutter/material.dart';

import '../../constants/style.dart';

class TImeSlotContainer extends StatefulWidget {
  final String time;
  bool isActive;

  TImeSlotContainer({this.isActive = false, required this.time});

  @override
  State<TImeSlotContainer> createState() => _TImeSlotContainerState();
}

class _TImeSlotContainerState extends State<TImeSlotContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.isActive = !widget.isActive;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: widget.isActive ? blue : Colors.white,
            boxShadow: const [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 3,
                  color: Colors.grey,
                  offset: Offset(0, 5))
            ],
            borderRadius: BorderRadius.circular(15)),
        child: Text(widget.time,
            style: TextStyle(
                color: widget.isActive ? Colors.white : Colors.grey,
                fontSize: 18)),
      ),
    );
  }
}

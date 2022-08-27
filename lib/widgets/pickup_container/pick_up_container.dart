import 'package:flutter/material.dart';

class PickUpContainer extends StatelessWidget {
  final String day;
  final Color dayColor;
  final String date;
  final String pastDay;
  final Color color;

  PickUpContainer(
      {required this.color,
      this.dayColor = Colors.white,
      required this.day,
      required this.date,
      required this.pastDay});

  TextStyle style = const TextStyle(color: Colors.grey, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
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
      child: Column(
        children: [
          Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Center(
                  child: Text(day,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: dayColor,
                          fontSize: 20)),
                ),
              )),
          Text(date, style: style),
          const SizedBox(height: 5),
          Text(pastDay, style: style)
        ],
      ),
    );
  }
}

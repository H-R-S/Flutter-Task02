import 'package:flutter/material.dart';
import '../../constants/style.dart';

class IconContainer extends StatelessWidget {
  final String title;
  final IconData icon;

  const IconContainer({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: blue,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 3,
                    color: Colors.grey,
                    offset: Offset(0, 5))
              ]),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
        const SizedBox(height: 10),
        Text(title, style: const TextStyle(fontSize: 18, color: blue))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task2/constants/style.dart';

class MyElevatedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.80,
        height: 50,
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
        child: const Center(
            child: Text("Continue",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white))),
      ),
    );
  }
}

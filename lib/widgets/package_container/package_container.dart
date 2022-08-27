import 'package:flutter/material.dart';
import 'package:task2/constants/style.dart';
import 'package:task2/widgets/icon_container/icon_container.dart';

class PackageContainer extends StatelessWidget {
  final String image;
  final num price;
  final String title;
  final String discountTitle;

  PackageContainer(
      {required this.image,
      required this.price,
      required this.title,
      required this.discountTitle});

  TextStyle style = const TextStyle(color: blue);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.40,
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
            child: Image.network(image, fit: BoxFit.contain),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: style),
                    const SizedBox(width: 10),
                    Text("(\$$price)",
                        style: style.copyWith(fontWeight: FontWeight.bold))
                  ],
                ),
                Text(discountTitle, style: style),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    IconContainer(title: "Wash", icon: Icons.wash),
                    IconContainer(title: "DryCleaning", icon: Icons.person),
                    IconContainer(title: "Iron", icon: Icons.iron),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

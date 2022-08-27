import 'package:flutter/material.dart';
import 'package:task2/screens/pickup_date/pickup_date_screen.dart';
import 'package:task2/widgets/package_container/package_container.dart';
import '../../constants/style.dart';
import '../chat/chat_screen.dart';

class PackageScreen extends StatelessWidget {
  String image =
      "https://www.transparentpng.com/thumb/clothes/flYuLs-dress-clothes-clipart-photo.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            const Text("Package", style: TextStyle(color: blue, fontSize: 20)),
        elevation: 10,
        leading: BackButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PickUpDateScreen()));
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
              PackageContainer(
                image: image,
                title: "5 T-Shorts DryCleaning",
                discountTitle: "You will get \$10 off buy this package",
                price: 60,
              ),
              const SizedBox(height: 20),
              PackageContainer(
                image: image,
                title: "5 T-Shorts DryCleaning",
                discountTitle: "You will get \$10 off buy this package",
                price: 60,
              ),
              const SizedBox(height: 20),
              PackageContainer(
                image: image,
                title: "5 T-Shorts DryCleaning",
                discountTitle: "You will get \$10 off buy this package",
                price: 60,
              ),
              const SizedBox(height: 20),
              PackageContainer(
                image: image,
                title: "5 T-Shorts DryCleaning",
                discountTitle: "You will get \$10 off buy this package",
                price: 60,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter_demo/screens/pages/overview/view/info_card_small.dart';

class OverViewSmall extends StatelessWidget {
  const OverViewSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
            topColor: Colors.orange,
            isActive: true,
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: "Package delivered",
            value: "17",
            onTap: () {},
            topColor: Colors.lightGreen,
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: "Cancelled delivery",
            value: "3",
            onTap: () {},
            topColor: Colors.red,
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: "Scheduled deliveries",
            value: "3",
            onTap: () {},
          ),
          SizedBox(
            height: width / 64,
          ),
        ],
      ),
    );
  }
}

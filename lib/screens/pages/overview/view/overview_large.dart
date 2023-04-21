import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter_demo/screens/pages/overview/view/info_card.dart';

class OverViewLarge extends StatelessWidget {
  const OverViewLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.size.width;

    return Row(
      children: [
        InfoCard(
          title: "Rides in progress",
          value: "7",
          onTap: () {},
          topColor: Colors.orange,
        ),
        SizedBox(
          width: width / 64,
        ),
        InfoCard(
          title: "Package delivered",
          value: "17",
          onTap: () {},
          topColor: Colors.lightGreen,
        ),
        SizedBox(
          width: width / 64,
        ),
        InfoCard(
          title: "Cancelled delivery",
          value: "3",
          onTap: () {},
          topColor: Colors.red,
        ),
        SizedBox(
          width: width / 64,
        ),
        InfoCard(
          title: "Scheduled deliveries",
          value: "3",
          onTap: () {},
        ),
      ],
    );
  }
}

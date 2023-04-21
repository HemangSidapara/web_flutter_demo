import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter_demo/screens/pages/overview/view/info_card.dart';

class OverViewMedium extends StatelessWidget {
  const OverViewMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
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
          ],
        ),
        SizedBox(height: width / 64),
        Row(
          children: [
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
            SizedBox(
              width: width / 64,
            ),
          ],
        ),
      ],
    );
  }
}

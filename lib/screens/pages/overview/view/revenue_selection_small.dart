import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter_demo/constants/style.dart';
import 'package:web_flutter_demo/screens/pages/overview/view/bar_chart.dart';
import 'package:web_flutter_demo/screens/pages/overview/view/revenue_info.dart';
import 'package:web_flutter_demo/widgets/customText.dart';

class RevenueSelectionSmall extends StatelessWidget {
  const RevenueSelectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: lightGrey.withOpacity(.1),
            blurRadius: 12,
          ),
        ],
        border: Border.all(
          color: lightGrey,
          width: .5,
        ),
      ),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                text: "Revenue Chart",
                color: lightGrey,
                weight: FontWeight.bold,
                size: 20,
              ),
              SizedBox(
                width: 600,
                height: 200,
                child: SimpleBarChart.withSampleData(),
              ),
            ],
          ),
          SizedBox(height: Get.size.height/25),
          Container(
            color: lightGrey,
            width: Get.size.width/1.5,
            height: 1,
          ),
          SizedBox(height: Get.size.height/25),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  RevenueInfo(
                    title: "Today's Revenue",
                    amount: "65",
                  ),
                  RevenueInfo(
                    title: "Last 7 Days",
                    amount: "175",
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  RevenueInfo(
                    title: "Last 30 Days",
                    amount: "1,254",
                  ),
                  RevenueInfo(
                    title: "Last 12 Months",
                    amount: "5,000",
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

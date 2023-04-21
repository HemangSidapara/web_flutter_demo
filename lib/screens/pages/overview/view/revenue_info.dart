import 'package:flutter/material.dart';
import 'package:web_flutter_demo/constants/style.dart';

class RevenueInfo extends StatelessWidget {
  String? title;
  String? amount;

  RevenueInfo({
    Key? key,
    this.title,
    this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "$title \n\n",
              style: TextStyle(
                color: lightGrey,
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: "\$ $amount ",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

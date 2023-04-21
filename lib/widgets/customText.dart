import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String? text;
  double? size;
  Color? color;
  FontWeight? weight;

  CustomText({
    Key? key,
    this.text,
    this.size,
    this.color,
    this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}

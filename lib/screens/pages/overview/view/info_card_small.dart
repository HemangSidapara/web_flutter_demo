import 'package:flutter/material.dart';
import 'package:web_flutter_demo/constants/style.dart';
import 'package:web_flutter_demo/widgets/customText.dart';

class InfoCardSmall extends StatelessWidget {
  String? title;
  String? value;
  Color? topColor;
  bool? isActive;
  VoidCallback? onTap;

  InfoCardSmall({
    Key? key,
    this.title,
    this.value,
    this.topColor,
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive! ? active : lightGrey,
              width: .5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24,
                color: isActive! ? active : lightGrey,
                weight: FontWeight.w300,
              ),
              CustomText(
                text: value,
                size: 24,
                color: isActive! ? active : dark,
                weight: FontWeight.w300,
              )
            ],
          ),
        ),
      ),
    );
  }
}

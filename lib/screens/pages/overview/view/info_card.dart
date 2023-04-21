import 'package:flutter/material.dart';
import 'package:web_flutter_demo/constants/style.dart';

class InfoCard extends StatelessWidget {
  String? title;
  String? value;
  Color? topColor;
  bool? isActive;
  VoidCallback? onTap;

  InfoCard({
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
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12,
              ),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: topColor ?? active,
                      height: 5,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$title\n",
                      style: TextStyle(
                        fontSize: 16,
                        color: isActive! ? active : lightGrey
                      )
                    ),
                    TextSpan(
                        text: "$value",
                        style: TextStyle(
                            fontSize: 40,
                            color: isActive! ? active : dark
                        )
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

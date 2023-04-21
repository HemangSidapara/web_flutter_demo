import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter_demo/constants/controller.dart';
import 'package:web_flutter_demo/helpers/responsive_helper.dart';
import 'package:web_flutter_demo/widgets/customText.dart';

class ClientsView extends StatelessWidget {
  const ClientsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
              () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: ResponsiveHelper.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

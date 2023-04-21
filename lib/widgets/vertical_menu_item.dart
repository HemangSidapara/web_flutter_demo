import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter_demo/constants/controller.dart';
import 'package:web_flutter_demo/constants/style.dart';
import 'package:web_flutter_demo/controllers/menu_controller.dart';
import 'package:web_flutter_demo/widgets/customText.dart';

class VerticalMenuItem extends StatelessWidget {
  String? itemName;
  VoidCallback? onTap;

  VerticalMenuItem({
    Key? key,
    this.itemName,
    this.onTap,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double width = Get.size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value ? menuController.onHoverItem(itemName!) : menuController.hoverItem('Not Hovering');
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName!) ? lightGrey.withOpacity(.1) : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName!) || menuController.isActive(itemName!),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  width: 3,
                  height: 72,
                  color: dark,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: menuController.returnNavIcon(itemName!),
                    ),
                    !menuController.isActive(itemName!)
                        ? Flexible(
                      child: CustomText(
                        text: itemName,
                        color: menuController.isHovering(itemName!) ? dark : lightGrey,
                      ),
                    )
                        : Flexible(
                      child: CustomText(
                        text: itemName,
                        color: dark,
                        size: 18,
                        weight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

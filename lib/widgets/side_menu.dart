import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter_demo/approutes/approutes.dart';
import 'package:web_flutter_demo/constants/controller.dart';
import 'package:web_flutter_demo/constants/style.dart';
import 'package:web_flutter_demo/helpers/responsive_helper.dart';
import 'package:web_flutter_demo/widgets/customText.dart';
import 'package:web_flutter_demo/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveHelper.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: width / 80),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Icon(Icons.access_time),
                    ),
                    Flexible(
                      child: CustomText(
                        text: 'Clock',
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: width / 80),
                  ],
                ),
              ],
            ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map(
                  (itemName) => SideMenuItem(
                    itemName: itemName == AuthenticatePageRoute ? 'Log Out' : itemName,
                    onTap: () {
                      if (itemName == AuthenticatePageRoute) {
                      }

                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveNavItemTo(itemName);
                        if (ResponsiveHelper.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigateTo(itemName);
                      }
                    },
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}

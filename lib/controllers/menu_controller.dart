import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter_demo/approutes/approutes.dart';
import 'package:web_flutter_demo/constants/style.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = OverViewPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveNavItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHoverItem(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnNavIcon(String itemName) {
    switch (itemName){
      case OverViewPageRoute:
        return customIcon(Icons.trending_up, itemName);
      case DriversPageRoute:
        return customIcon(Icons.drive_eta, itemName);
      case ClientsPageRoute:
        return customIcon(Icons.people_alt_outlined, itemName);
      case AuthenticatePageRoute:
        return customIcon(Icons.exit_to_app, itemName);
      default:
        return customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    }

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}

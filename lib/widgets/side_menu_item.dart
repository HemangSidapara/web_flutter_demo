import 'package:flutter/material.dart';
import 'package:web_flutter_demo/helpers/responsive_helper.dart';
import 'package:web_flutter_demo/widgets/horizontal_menu_item.dart';
import 'package:web_flutter_demo/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  String? itemName;
  VoidCallback? onTap;

  SideMenuItem({
    Key? key,
    this.itemName,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveHelper.isCustomScreen(context)) {
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
    else{
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}

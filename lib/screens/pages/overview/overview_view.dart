import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter_demo/constants/controller.dart';
import 'package:web_flutter_demo/constants/style.dart';
import 'package:web_flutter_demo/helpers/responsive_helper.dart';
import 'package:web_flutter_demo/screens/pages/overview/view/overview_large.dart';
import 'package:web_flutter_demo/screens/pages/overview/view/overview_medium.dart';
import 'package:web_flutter_demo/screens/pages/overview/view/overview_small.dart';
import 'package:web_flutter_demo/screens/pages/overview/view/revenue_selection_large.dart';
import 'package:web_flutter_demo/screens/pages/overview/view/revenue_selection_small.dart';
import 'package:web_flutter_demo/widgets/customText.dart';

class OverView extends StatelessWidget {
  const OverView({Key? key}) : super(key: key);

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
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveHelper.isLargeScreen(context) || ResponsiveHelper.isMediumScreen(context))
                if (ResponsiveHelper.isCustomScreen(context)) const OverViewMedium() else const OverViewLarge()
              else
                const OverViewSmall(),

              if(ResponsiveHelper.isLargeScreen(context) || ResponsiveHelper.isMediumScreen(context))
                const RevenueSelectionLarge()
              else
                const RevenueSelectionSmall(),
            ],
          ),
        ),
      ],
    );
  }
}

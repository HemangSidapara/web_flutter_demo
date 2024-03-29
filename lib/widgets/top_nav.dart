import 'package:flutter/material.dart';
import 'package:web_flutter_demo/constants/style.dart';
import 'package:web_flutter_demo/helpers/responsive_helper.dart';
import 'package:web_flutter_demo/widgets/customText.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      leading: ResponsiveHelper.isSmallScreen(context)
          ? IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu),
            )
          : Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: const Icon(Icons.access_alarm),
                ),
              ],
            ),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
            child: CustomText(
              text: 'Clock',
              color: lightGrey,
              size: 20,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings), color: dark.withOpacity(.7)),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
                color: dark.withOpacity(.7),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: light,
                      width: 2,
                    ),
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(width: 24),
          CustomText(
            text: 'Flutter Demo',
            color: lightGrey,
          ),
          const SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );

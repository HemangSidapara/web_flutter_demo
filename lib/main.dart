import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_flutter_demo/constants/style.dart';
import 'package:web_flutter_demo/controllers/menu_controller.dart';
import 'package:web_flutter_demo/controllers/navigation_controller.dart';
import 'package:web_flutter_demo/layout.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Web Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.actorTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          }
        ),
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SiteLayout(),
    );
  }
}
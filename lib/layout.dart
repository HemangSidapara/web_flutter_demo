import 'package:flutter/material.dart';
import 'package:web_flutter_demo/helpers/responsive_helper.dart';
import 'package:web_flutter_demo/screens/large_screen.dart';
import 'package:web_flutter_demo/screens/small_screen.dart';
import 'package:web_flutter_demo/widgets/side_menu.dart';
import 'package:web_flutter_demo/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    if(!ResponsiveHelper.isSmallScreen(context)) {
      scaffoldKey.currentState?.closeDrawer();
    }
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(child: SideMenu()),
      body: const ResponsiveHelper(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}

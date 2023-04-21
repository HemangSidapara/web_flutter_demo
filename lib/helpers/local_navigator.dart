import 'package:flutter/widgets.dart';
import 'package:web_flutter_demo/approutes/approuter.dart';
import 'package:web_flutter_demo/approutes/approutes.dart';
import 'package:web_flutter_demo/constants/controller.dart';

Navigator localNavigator() {
  return Navigator(
    key: navigationController.navigationKey,
    initialRoute: OverViewPageRoute,
    onGenerateRoute: generateRoute,
  );
}
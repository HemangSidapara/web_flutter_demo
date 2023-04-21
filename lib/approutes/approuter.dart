import 'package:flutter/material.dart';
import 'package:web_flutter_demo/approutes/approutes.dart';
import 'package:web_flutter_demo/screens/pages/clients/clients_view.dart';
import 'package:web_flutter_demo/screens/pages/drivers/drivers_view.dart';
import 'package:web_flutter_demo/screens/pages/overview/overview_view.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case OverViewPageRoute:
      return getPageRoute(OverView());
    case DriversPageRoute:
      return getPageRoute(DriversView());
    case ClientsPageRoute:
      return getPageRoute(ClientsView());
    default:
      return getPageRoute(OverView());
  }
}

PageRoute getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}
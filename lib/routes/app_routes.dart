import 'package:flutter/material.dart';
import '../screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'detail': (BuildContext context) => const DetailScreen(),
    'home': (BuildContext context) => const HomeScreen(),
    'list': (BuildContext context) => const ListScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
      );
  }
}
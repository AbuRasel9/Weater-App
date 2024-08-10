import 'package:flutter/material.dart';
import 'package:weather_app/core/screens/loading_screen.dart';
import 'package:weather_app/core/screens/home_screen.dart';
import 'package:weather_app/core/screens/location_screen.dart';
import 'package:weather_app/utils/routes/routes_name.dart';

class RoutesManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.loading:
        return MaterialPageRoute(
          builder: (context) => const LoadingScreen(),
        );
      case RoutesName.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case RoutesName.locationScreen:
        return MaterialPageRoute(
          builder: (context) => const LocationScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("NO Page Found"),
            ),
          ),
        );
    }
  }
}

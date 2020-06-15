import 'package:flutter/material.dart';

import 'screens/posts/posts_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PostsScreen.route:
        return MaterialPageRoute(builder: (_) => PostsScreen());
      default:
        throw Exception('no route found for ${settings.name}');
    }
  }
}

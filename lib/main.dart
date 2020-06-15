import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/presentation/router.dart';
import 'package:fluttercleanarchitecture/presentation/screens/posts/posts_screen.dart';
import 'service_locator.dart' as service_locator;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await service_locator.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: Router.generateRoute,
      initialRoute: PostsScreen.route,
    );
  }
}

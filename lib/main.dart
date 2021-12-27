import 'package:ShoppingApp/pages/HomePage.dart';
import 'package:ShoppingApp/routes.dart';
import 'package:ShoppingApp/screens/splash/splash_screen.dart';
import 'package:ShoppingApp/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

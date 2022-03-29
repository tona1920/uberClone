import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uber/pages/home/home_page.dart';
import 'package:flutter_uber/pages/login/login_page.dart';
import 'package:flutter_uber/pages/register/register_page.dart';
import 'package:flutter_uber/pages/map/map_page.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  AndroidGoogleMapsFlutter.useAndroidViewSurface = true;

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Clon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
        'map': (BuildContext context) => MapPage()
      },
    );
  }
}

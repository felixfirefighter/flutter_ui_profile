import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_profile/screens/profile_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[100],
        cursorColor: Colors.white,
        fontFamily: 'Nunito',
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 2,
        ),
      ),
      routes: {'/': (context) => ProfileScreen()},
      initialRoute: '/',
    );
  }
}

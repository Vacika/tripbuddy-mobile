import 'package:flutter/material.dart';
import 'package:mobile_najdiprevoz/screens/login.screen.dart';

import 'screens/home.screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          // primarySwatch: Colors.red,
        backgroundColor: Colors.blueGrey[900],
          primaryColor: Color.fromRGBO(225, 0, 117, 1),
          fontFamily: 'Georgia',
          accentColor: Colors.white),
      home: HomeScreen(token: 'token'),
    );
  }
}

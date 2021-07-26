import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gmatidioms/levels_screen.dart';

Color _backgroundColor = Colors.purple[800];

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.purple[800],
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GMAT Idioms',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LevelsScreen(backgroundColor: _backgroundColor,),
    );
  }
}
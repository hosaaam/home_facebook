import 'package:facebook/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light)
        ),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white
        ),
        hintColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),

      ),
      home:  const Home(),
    );
  }
}


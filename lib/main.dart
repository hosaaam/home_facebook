import 'package:facebook/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.white,
          titleTextStyle: TextStyle(color: Colors.blueAccent,
              fontSize: 19,
              fontWeight:FontWeight.w700),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark
          ),
        ),
        scaffoldBackgroundColor: Colors.grey,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black,),
        hintColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      home:   Home(),
    );
  }
}


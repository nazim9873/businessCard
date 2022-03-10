import 'package:business_card/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BusinessCard',
      theme: ThemeData(
       
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
     
      home: const MyHomePage(title: 'Digital Business Card'),
    );
  }
}



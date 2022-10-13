import 'package:flutter/material.dart';
import 'package:flutter_clothes_store_ui/screen/bottom_navigation_screen.dart';
import 'package:flutter_clothes_store_ui/screen/first_screen.dart';
import 'package:flutter_clothes_store_ui/screen/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationScreen(),
    );
  }
}

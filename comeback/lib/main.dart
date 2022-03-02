import 'package:comeback/bottom_navigation_bar.dart';
import 'package:comeback/single_child_scroll_view.dart';
import 'package:comeback/sliver_app_bar.dart';
import 'package:comeback/text_field.dart';
import 'package:flutter/material.dart';
import 'package:comeback/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BottomNavigationBarExample(),
    );
  }
}
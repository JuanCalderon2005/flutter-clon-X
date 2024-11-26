import 'package:flutter/material.dart';
import 'package:twitter/views/HomPage.dart';
import 'package:twitter/views/Dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clon X',
      home: const Dashboard(homeWidget: CustomHomePage()),
    );
  }
}

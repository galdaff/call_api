import 'package:call_api/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Call Api',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

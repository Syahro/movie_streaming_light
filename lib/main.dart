import 'package:flutter/material.dart';
import 'package:movie_streaming_light/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Avenir Book',
      ),
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:magicui/homepage.dart';
void main() => runApp(MAGICUI());
class MAGICUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magic",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0.0,
        ),
        scaffoldBackgroundColor: Colors.transparent,
      ),
      home: Homepage(),
    );
  }
}

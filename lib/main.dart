import 'package:flutter/material.dart';
import 'profile_page.dart';

void main() => runApp(MyPortifolio());

class MyPortifolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "GoogleSans Regular",
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),
      home: ProfilePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:glassmorphic_login_ui/login_screen_4/login_screen_4.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen4(),
    );
  }
}

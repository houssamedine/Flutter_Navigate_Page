import 'package:flutter_navigate_page/screen/home_screen.dart';
import 'package:flutter_navigate_page/screen/photo_screen.dart';
import 'package:flutter_navigate_page/screen/video_screen.dart';
import 'package:flutter_navigate_page/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    AppMultiPage(),
  );
}

class AppMultiPage extends StatefulWidget {
  const AppMultiPage({Key? key}) : super(key: key);

  @override
  State<AppMultiPage> createState() => _AppMultiPageState();
}

class _AppMultiPageState extends State<AppMultiPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        'home': (context) => HomeScreen(),
        'videos': (context) => VideoScreen(),
        'photos': (context) => PhotoScreen(),
      },
    );
  }
}

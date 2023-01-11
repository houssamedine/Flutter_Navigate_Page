import 'package:flutter/material.dart';

class PhotoScreen extends StatefulWidget {
  static const id = '';
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Photos")),
    );
  }
}

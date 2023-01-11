import 'package:flutter_navigate_page/screen/photo_screen.dart';
import 'package:flutter_navigate_page/screen/video_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/homeScreenTop.png",
                  width: size.width,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Center(
                    child: Text(
                      "Home Screen",
                      style: TextStyle(fontSize: 22, color: Color(0xFFBA68C8)),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PhotoScreen(),
                              ));
                        },
                        child: Text("Photos"),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoScreen(),
                              ));
                        },
                        child: Text("Videos"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

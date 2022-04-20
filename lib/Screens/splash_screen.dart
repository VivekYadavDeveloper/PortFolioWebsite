import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, "HomePage"
          // MaterialPageRoute(
          //   builder: (context) => const MyHomePage(
          //     appTitle: '',
          //   ),
          // ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Sizer(
      builder: (context, orientation, screenType) {
        return Scaffold(
          body: Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      child: Image.asset(
                        "assets/CODEP.gif",
                        height: 20.0.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

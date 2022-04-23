 import 'package:flutter/material.dart';
import 'package:portfolio/Screens/splash_screen.dart';
import 'package:sizer/sizer.dart';
import 'Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          home: const SplashScreen(),
          routes: <String, WidgetBuilder>{
            "Splash Screen": (BuildContext context) => const SplashScreen(),
            "HomePage": (BuildContext context) => const HomePage()
          },
        );
      },
    );
  }
}

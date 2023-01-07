import 'package:flutter/material.dart';
import 'package:portfolio/Screens/splash_screen.dart';
import 'package:portfolio/Theme/app_theme.dart';
import 'package:portfolio/Theme/theme_model.dart';
import 'package:provider/provider.dart';


import 'Screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // final isDark = prefs.getBool('_isDark') ?? false;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeNotifier(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, notifier, _) {
        return MaterialApp(
          theme: notifier.darkTheme ? darkTheme : lightTheme,
          debugShowCheckedModeBanner: false,
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

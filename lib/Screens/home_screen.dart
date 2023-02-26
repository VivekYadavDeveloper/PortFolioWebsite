import 'package:flutter/material.dart';
import 'package:portfolio/Responsive%20Screen/desktop_view.dart';
import 'package:portfolio/Responsive%20Screen/mobile_view.dart';
import 'package:portfolio/Constant/constant.dart';
import 'package:portfolio/Theme/theme_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

//*** TickerProviderStateMixin Used For Animation */
class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // void _toggleTheme() {
  //   final setting = Provider.of<ThemeNotifier>(context, listen: false);
  //   setting.toggleTheme();
  // }

  late AnimationController _animeController;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _animeController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);

    _animation = Tween<double>(begin: 0, end: 1).animate(_animeController);
    _animeController.forward();
  }

  @override
  void dispose() {
    _animeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var themeChange = Provider.of<ThemeNotifier>(context).darkTheme;
    return FadeTransition(
      opacity: _animation,
      child: Scaffold(
        backgroundColor: themeChange ? AppColors.mirage : AppColors.shadePurple,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xFFE1E5EA),
                  Color(0xFFFAF3F3),
                ],
              ),
            ),

            //**** Used For Responsive Screen */

            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 768) {
                  return const MobileView();
                } else {
                  return const DesktopView();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

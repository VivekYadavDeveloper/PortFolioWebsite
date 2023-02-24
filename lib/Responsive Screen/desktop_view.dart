// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/Screens/Widgets/custom_widgets.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Constant/constant.dart';
import '../Theme/theme_model.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  void _toggleTheme() {
    final setting = Provider.of<ThemeNotifier>(context, listen: false);
    setting.toggleTheme();
  }

  final int _currentTime = DateTime.now().year;

  //*** For Launching URls */
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Could Not Launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    var themeChange = Provider.of<ThemeNotifier>(context).darkTheme;
    return Scaffold(
      backgroundColor: themeChange ? AppColors.mirage : AppColors.shadePurple,
      appBar: AppBar(
        backgroundColor: themeChange ? AppColors.mirage : AppColors.shadePurple,
        title: Text("< Vivek Yadav />",
                style: TextStyle(color: themeChange? AppColors.activeColor:AppColors.blackPearl)),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("Home", style: TextStyle(color: themeChange? AppColors.activeColor:AppColors.blackPearl)),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Projects",
                style: TextStyle(color: themeChange? AppColors.activeColor:AppColors.blackPearl)),
          ),
          IconButton(
              color: themeChange ? AppColors.white : AppColors.blackPearl,
              onPressed: _toggleTheme,
              icon: Icon(
                  themeChange ? FontAwesomeIcons.sun : FontAwesomeIcons.moon)),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 25.0, left: 35.0, right: 25.0)),
                              Text.rich(
                                TextSpan(
                                  text: "Hello",
                                  style: TextStyle(fontSize: sizeHeight / 42),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: " I'm\n",
                                        style: TextStyle(
                                          color: themeChange
                                              ? AppColors.activeColor
                                              : AppColors.blackPearl,
                                        )),
                                    TextSpan(
                                      text: "Vivek Yadav\n\n",
                                      style: TextStyle(
                                        fontSize: sizeHeight / 25,
                                        color: themeChange
                                            ? AppColors.activeColor
                                            : AppColors.blackPearl,
                                      ),
                                    ),
                                    TextSpan(
                                        text:
                                            "Flutter/Android (Jetpack Compose) Developer.\n\n"),
                                    TextSpan(
                                      text:
                                          "AKA Vivek. Flutter/Android Developer from India, Dehradun / Uttar Pradesh with \nA code-minded front-end software engineer focused on building beautiful interfaces\n& experiences and Convert Ideas, Design To System With Frontend Side (Android Apps, Flutter Application)\nalso The Backend Side With (SpringBoot, Ktor, Nest.js) Always Trying To Build Tools To Help and Improve My Work.",
                                      style: TextStyle(
                                          overflow: TextOverflow.visible,
                                          color: themeChange
                                              ? AppColors.white
                                              : AppColors.blackPearl,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              50),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: sizeWidth / 25),
                              Container(
                                height: sizeWidth / 9,
                                width: sizeWidth / 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: themeChange
                                      ? AppColors.mirage
                                      : AppColors.purpelColor,
                                  image: DecorationImage(
                                      image:
                                          NetworkImage("assets/image/two.png"),
                                      fit: BoxFit.cover),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: themeChange
                                          ? AppColors.rawShadow
                                          : AppColors.shadePurple,
                                      offset: Offset(0.0, 5.0),
                                      blurRadius: 6.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 62.0, top: 40),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: sizeHeight / 25,
                              width: sizeWidth / 15,
                              decoration: BoxDecoration(
                                color: AppColors.activeColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.rawShadow,
                                    blurRadius: 12.0,
                                    spreadRadius: .10,
                                    offset: Offset(0, 7),
                                  ),
                                ],
                              ),
                              child: Center(child: Text("Let's Talk")),
                            ),
                          ),
                        ),
                        SizedBox(height: sizeHeight / 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 62.0),
                              child: Text("Check Out My :"),
                            ),
                            SizedBox(
                              width: sizeWidth / 65,
                            ),
                            IconButton(
                              splashRadius: 30,
                              hoverColor: themeChange
                                  ? AppColors.activeColor
                                  : AppColors.purpelColor,
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 25,
                              ),
                            ),
                            SizedBox(
                              width: sizeWidth / 65,
                            ),
                            IconButton(
                              splashRadius: 30,
                              hoverColor: themeChange
                                  ? AppColors.activeColor
                                  : AppColors.purpelColor,
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.linkedinIn,
                                size: 25,
                              ),
                            ),
                            SizedBox(
                              width: sizeWidth / 65,
                            ),
                            IconButton(
                              splashRadius: 30,
                              hoverColor: themeChange
                                  ? AppColors.activeColor
                                  : AppColors.purpelColor,
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.discord,
                                size: 25,
                              ),
                            ),
                            SizedBox(
                              width: sizeWidth / 65,
                            ),
                            IconButton(
                              splashRadius: 30,
                              hoverColor: themeChange
                                  ? AppColors.activeColor
                                  : AppColors.purpelColor,
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: sizeHeight / 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Text.rich(
                            TextSpan(
                              text: "---------------------------What Does ",
                              style: TextStyle(fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " He Do?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: themeChange
                                        ? AppColors.activeColor
                                        : AppColors.blackPearl,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60.0, top: 20.0),
                          child: Text(
                            "He creates elegant, logical mobile \napp solutions.In his hobby time, \nhe learn tech and mostly watch anime.",
                            style: TextStyle(fontSize: 26),
                          ),
                        ),
                        SizedBox(height: sizeHeight / 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60.0),
                              child: Text.rich(
                                TextSpan(
                                  text: "Think.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 70),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: " Code. ",
                                      style: TextStyle(
                                        color: themeChange
                                            ? AppColors.activeColor
                                            : AppColors.blackPearl,
                                      ),
                                    ),
                                    TextSpan(text: "Debug."),
                                    TextSpan(
                                      text: " Repeat. ",
                                      style: TextStyle(
                                        color: themeChange
                                            ? AppColors.activeColor
                                            : AppColors.blackPearl,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: sizeHeight / 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Text.rich(
                            TextSpan(
                              text: "---------------------------What Does ",
                              style: TextStyle(fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " Skills",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: themeChange
                                        ? AppColors.activeColor
                                        : AppColors.blackPearl,
                                  ),
                                ),
                                TextSpan(
                                  text: " He Have?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: themeChange
                                        ? AppColors.activeColor
                                        : AppColors.blackPearl,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: GridView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        mainAxisSpacing: 10,
                                        // crossAxisSpacing: 1,
                                        mainAxisExtent: 180),
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 21.0, left: 21.0),
                                    child: Lottie.network(
                                      "assets/animation/Flutter.json",
                                      fit: BoxFit.contain,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 21.0, left: 21.0),
                                    child: Lottie.network(
                                      "assets/animation/Android.json",
                                      fit: BoxFit.contain,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 21.0, left: 21.0),
                                    child: Lottie.network(
                                      "assets/animation/Android Studio.json",
                                      fit: BoxFit.contain,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 21.0, left: 21.0),
                                    child: Lottie.network(
                                      "assets/animation/html.json",
                                      fit: BoxFit.contain,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 21.0, left: 21.0),
                                    child: Lottie.network(
                                      "assets/animation/Mysql.json",
                                      fit: BoxFit.contain,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 21.0, left: 21.0),
                                    child: Lottie.network(
                                      "assets/animation/Github.json",
                                      fit: BoxFit.contain,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 21.0, left: 21.0),
                                    child: Lottie.network(
                                      "assets/animation/Git.json",
                                      fit: BoxFit.contain,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 21.0, left: 21.0),
                                    child: Lottie.network(
                                      "assets/animation/css white.json",
                                      fit: BoxFit.contain,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: sizeHeight / 70),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text.rich(
                              TextSpan(
                                text:
                                    "Currently enhancing travelling at headout as a.\n",
                                style: TextStyle(fontSize: 26),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Flutter / Android",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  TextSpan(
                                    text: " Developer.",
                                    style: TextStyle(
                                        color: themeChange
                                            ? AppColors.activeColor
                                            : AppColors.blackPearl,
                                        fontSize: 50),
                                  ),
                                ],
                              ),
                            ),
                            Lottie.network(
                              "assets/animation/colored rocket.json",
                              fit: BoxFit.scaleDown,
                              height: sizeHeight / 3,
                              // width: sizeWidth / 5,
                              filterQuality: FilterQuality.high,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            cardWidgets(
                              "Websits\n",
                              "He created his portfolio websites with flutter with elegant look.",
                              context,
                              themeChange
                                  ? AppColors.shinePurpleBlue
                                  : AppColors.whiteShade,
                              themeChange
                                  ? AppColors.shinePurpleBlue
                                  : AppColors.shadePurple,
                            ),
                            cardWidgets(
                              "Apps\n",
                              "He created some awesome android/iOS application with flutter.",
                              context,
                              themeChange
                                  ? AppColors.shineBieg
                                  : AppColors.whiteShadeTwo,
                              themeChange
                                  ? AppColors.shineBieg
                                  : AppColors.shadePurple,
                            ),
                            cardWidgets(
                              "Working\n",
                              "He is working on some upcomming application.",
                              context,
                              themeChange
                                  ? AppColors.shinePurpleBlue
                                  : AppColors.purpelColor,
                              themeChange
                                  ? AppColors.shinePurpleBlue
                                  : AppColors.shadePurple,
                            ),
                            SizedBox(
                              height: 500,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Text.rich(
                            TextSpan(
                              text: "---------------------------Love This ",
                              style: TextStyle(fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Website?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: themeChange
                                        ? AppColors.activeColor
                                        : AppColors.blackPearl,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 60.0),
                              child: Text.rich(
                                TextSpan(
                                  text:
                                      "Loved this portfolio? Make this yours by forking.\n",
                                  style: TextStyle(fontSize: 24),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: "Visit Github Repository",
                                        style: TextStyle(fontSize: 70.4))
                                  ],
                                ),
                              ),
                            ),
                            onTapCardWidgets(
                                "Another Portfolio\n",
                                "Developer Portfolio Build On Flutter",
                                context,
                                themeChange
                                    ? AppColors.shinePurpleBlue
                                    : AppColors.purpelColor,
                                themeChange
                                    ? AppColors.shinePurpleBlue
                                    : AppColors.shadePurple, () {
                              print("Github");
                            },),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text.rich(
                        TextSpan(
                            text: "----------------------- Made with ",
                            children: const <TextSpan>[
                              TextSpan(
                                  text: "❤",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 25)),
                              TextSpan(
                                  text:
                                      " by Vivek Yadav ---------------------------")
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/Constant/constant.dart';
import 'package:provider/provider.dart';

import 'package:url_launcher/url_launcher.dart';

import '../Screens/Widgets/custom_widgets.dart';
import '../Theme/theme_model.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  void _toggleTheme() {
    final setting = Provider.of<ThemeNotifier>(context, listen: false);
    setting.toggleTheme();
  }

  //*** For Launching URls */

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    var themeChange = Provider.of<ThemeNotifier>(context).darkTheme;

    return Scaffold(
      backgroundColor: themeChange ? AppColors.mirage : AppColors.shadePurple,
      appBar: AppBar(
        backgroundColor: themeChange ? AppColors.mirage : AppColors.shadePurple,
        title: AnimatedTextKit(totalRepeatCount: 20, animatedTexts: [
          TypewriterAnimatedText("<Vivek Yadav/>",
              textAlign: TextAlign.left,
              textStyle: TextStyle(
                  color: themeChange
                      ? AppColors.activeColor
                      : AppColors.blackPearl))
        ]),
        actions: [
          TextButton(
            onPressed: () {
              const uri =
                  "https://docs.google.com/document/d/1XXXqbg_MmtjHuBW6-VsjUX_seUaINYOjlnbUHwuSmI0/edit?usp=sharing";
              _launchURL(uri);
            },
            child: Text("Resume",
                style: TextStyle(
                    color: themeChange
                        ? AppColors.activeColor
                        : AppColors.blackPearl)),
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
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text.rich(
                      TextSpan(
                        text: "Hello! Coders ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: sizeHeight / 25,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "I'm \n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: sizeHeight / 20,
                              color: themeChange
                                  ? AppColors.activeColor
                                  : AppColors.blackPearl,
                            ),
                          ),
                          TextSpan(
                            text: "Vivek Yadav\n\n",
                            style: TextStyle(
                              color: themeChange
                                  ? AppColors.activeColor
                                  : AppColors.blackPearl,
                            ),
                          ),
                          TextSpan(
                            text:
                                "Flutter/Android (Jetpack Compose)\nDeveloper.\n\n",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: themeChange
                                    ? AppColors.white
                                    : AppColors.blackPearl,
                                fontSize:
                                    MediaQuery.of(context).size.height / 35),
                          ),
                          TextSpan(
                            text:
                                "AKA Vivek. Flutter/Android Developer from India,\nDehradun/Uttar Pradesh with \nA code-minded front-end software engineer \nfocused on building beautiful interfaces\n& experiences and Convert Ideas, \nDesign To System With Frontend Side\n(Android Apps, Flutter Application)\nalso The Backend Side With \n(SpringBoot, Ktor, Nest.js) Always Trying \nTo Build Tools To Help and Improve My Work.",
                            style: TextStyle(
                                overflow: TextOverflow.visible,
                                color: themeChange
                                    ? AppColors.white
                                    : AppColors.blackPearl,
                                fontSize:
                                    MediaQuery.of(context).size.height / 55),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: sizeHeight / 65),
                Container(
                  height: sizeHeight / 5,
                  width: sizeWidth / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:
                        themeChange ? AppColors.mirage : AppColors.purpelColor,
                    image: DecorationImage(
                        image: NetworkImage("assets/image/two.png"),
                        fit: BoxFit.cover),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: themeChange
                            ? AppColors.rawShadow
                            : AppColors.blackPearl,
                        offset: Offset(0.0, 5.0),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.0, top: 20),
                  child: GestureDetector(
                    onTap: () {
                      const uri = "mailto:vk662967@gmail.com";

                      _launchURL(uri);
                    },
                    child: Container(
                      height: sizeHeight / 25,
                      width: sizeWidth / 5,
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
                Text("Check Out My :"),
                SizedBox(height: sizeHeight / 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: sizeWidth / 65,
                    ),
                    IconButton(
                      splashRadius: 30,
                      hoverColor: themeChange
                          ? AppColors.activeColor
                          : AppColors.purpelColor,
                      onPressed: () {
                        const uri =
                            "https://www.instagram.com/thevivekyadavofficial";
                        _launchURL(uri);
                      },
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
                      onPressed: () {
                        const uri =
                            "https://www.linkedin.com/in/vivekyadavtiger";
                        _launchURL(uri);
                      },
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
                      onPressed: () {
                        const uri = "https://discordapp.com/users/Vivek#5807";
                        _launchURL(uri);
                      },
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
                      onPressed: () {
                        const uri = "https://github.com/VivekYadavDeveloper";
                        _launchURL(uri);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: sizeHeight / 35),
                Text.rich(
                  TextSpan(
                    text: "What Does ",
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
                SizedBox(height: sizeHeight / 25),
                Text(
                  "He creates elegant, logical \nmobile app solutions.In his hobby time,\nhe learn tech and mostly watch anime.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: sizeHeight / 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "Think.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: sizeHeight / 35),
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
                  ],
                ),
                SizedBox(height: sizeHeight / 10),
                Text.rich(
                  TextSpan(
                    text: "What Does ",
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
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GridView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 5,
                            // crossAxisSpacing: 1,
                            mainAxisExtent: 80),
                        children: <Widget>[
                          Lottie.network(
                            "assets/animation/Flutter.json",
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.low,
                          ),
                          Lottie.network(
                            "assets/animation/Android.json",
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.low,
                          ),
                          Lottie.network(
                            "assets/animation/Android Studio.json",
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.low,
                          ),
                          Lottie.network(
                            "assets/animation/html.json",
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.low,
                          ),
                          Lottie.network(
                            "assets/animation/Mysql.json",
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.low,
                          ),
                          Lottie.network(
                            "assets/animation/Github.json",
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.low,
                          ),
                          Lottie.network(
                            "assets/animation/Git.json",
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.low,
                          ),
                          Lottie.network(
                            "assets/animation/css white.json",
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.low,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: sizeHeight / 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text.rich(
                      TextSpan(
                        text:
                            "Currently enhancing travelling at headout as a.\n",
                        style: TextStyle(fontSize: 15),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Flutter / Android",
                            style: TextStyle(fontSize: 21),
                          ),
                          TextSpan(
                            text: " Developer.",
                            style: TextStyle(
                                color: themeChange
                                    ? AppColors.activeColor
                                    : AppColors.blackPearl,
                                fontSize: 25),
                          ),
                        ],
                      ),
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Lottie.network(
                  "assets/animation/colored rocket.json",
                  fit: BoxFit.scaleDown,
                  height: sizeHeight / 3,
                  // width: sizeWidth / 5,
                  filterQuality: FilterQuality.low,
                ),
                cardWidgets(
                  "Websits\n",
                  "He created his portfolio websites with flutter with elegant look.",
                  context,
                  themeChange
                      ? AppColors.shinePurpleBlue
                      : AppColors.whiteShade,
                  themeChange
                      ? AppColors.shinePurpleBlue
                      : AppColors.blackPearl,
                ),
                cardWidgets(
                  "Apps\n",
                  "He created some awesome android/iOS application with flutter.",
                  context,
                  themeChange ? AppColors.shineBieg : AppColors.whiteShadeTwo,
                  themeChange ? AppColors.shineBieg : AppColors.blackPearl,
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
                      : AppColors.blackPearl,
                ),
                SizedBox(
                  height: sizeHeight / 50,
                ),
                Text.rich(
                  TextSpan(
                    text: "Love This ",
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: sizeHeight / 50,
                ),
                Text.rich(
                  TextSpan(
                    text: "Loved this portfolio? Make this yours by forking.\n",
                    style: TextStyle(fontSize: 20),
                    children: const <TextSpan>[
                      TextSpan(
                          text: "Visit Github Repository",
                          style: TextStyle(fontSize: 25.0))
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: sizeHeight / 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: onTapCardWidgets(
                    "Another Portfolio\n",
                    "Developer Portfolio Build On Flutter",
                    context,
                    themeChange ? AppColors.shineBieg : AppColors.whiteShadeTwo,
                    themeChange
                        ? AppColors.shinePurpleBlue
                        : AppColors.blackPearl,
                    () {
                      const uri =
                          "https://github.com/VivekYadavDeveloper/PortFolioWebsite";
                      _launchURL(uri);
                      print("Github");
                    },
                  ),
                ),
                SizedBox(height: 20),
                Text.rich(
                  TextSpan(
                    text: "Made with ",
                    children: const <TextSpan>[
                      TextSpan(
                          text: "❤",
                          style: TextStyle(color: Colors.red, fontSize: 25)),
                      TextSpan(text: " by Vivek Yadav")
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      print("Could Not Launch $url");
    }
  }
}

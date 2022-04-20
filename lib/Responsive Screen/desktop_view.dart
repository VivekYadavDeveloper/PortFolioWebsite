import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/kcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Screens/contact_screen.dart';
import '../Social Buttons/social_buttons.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              // maxRadius: 35.0,
              backgroundImage: AssetImage("assets/image/Profile.png"),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Hey! \n",
                    style: GoogleFonts.cookie(
                      textStyle: TextStyle(
                        color: const Color(0xFF139487),
                        fontSize: 15.0.sp,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: "This Is ",
                    style: GoogleFonts.spectralSc(
                      textStyle: TextStyle(
                        color: const Color(0xFF1C658C),
                        fontSize: 14.0.sp,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: "Vivek Yadav \n",
                    style: GoogleFonts.spectralSc(
                      textStyle: TextStyle(
                        color: const Color(0xFF1C658C),
                        fontSize: 14.0.sp,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: "An Aspiring Android/ Flutter Developer.",
                    style: TextStyle(
                      fontSize: 9.sp,
                      color: const Color(0xFF5B6478),
                    ),
                  ),
                ],
              ),
            ),
            // const Divider(
            //   height: 12.0,
            // ),
            SizedBox(
              height: 8.0.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                iconButton(
                  IconButton(
                    color: Colors.black,
                    icon: const FaIcon(FontAwesomeIcons.github),
                    onPressed: () {
                      const uri = "https://github.com/VivekYadavDeveloper";
                      _launchURL(uri);
                    },
                  ),
                ),
                iconButton(
                  IconButton(
                    color: Colors.blue,
                    icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                    onPressed: () {
                      const uri = "https://www.linkedin.com/in/vivekyadavtiger";
                      _launchURL(uri);
                    },
                  ),
                ),
                iconButton(
                  IconButton(
                    color: Colors.pinkAccent,
                    icon: const FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () {
                      const uri =
                          "https://www.instagram.com/thevivekyadavofficial/";
                      _launchURL(uri);
                    },
                  ),
                ),
                iconButton(
                  IconButton(
                    color: Colors.lightBlue,
                    icon: const FaIcon(FontAwesomeIcons.twitter),
                    onPressed: () {
                      const uri = "https://twitter.com/VivekYadavDev";
                      _launchURL(uri);
                    },
                  ),
                ),
                iconButton(
                  IconButton(
                    color: Colors.red,
                    icon: const FaIcon(FontAwesomeIcons.youtube),
                    onPressed: () {
                      const uri =
                          "https://www.youtube.com/c/VivekYadavOfficial/about";
                      _launchURL(uri);
                    },
                  ),
                ),
              ],
            ),
            const Divider(),
            // Lottie.asset("assets/LottieLogo."),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Center(
                child: Text(
                  "What I Do ?",
                  style: GoogleFonts.satisfy(
                    fontSize: 17.0.sp,
                    fontWeight: FontWeight.bold,
                    color: KTextcolor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                "Android / Flutter Development",
                style: GoogleFonts.spectralSc(
                    fontSize: 12.0.sp, color: KTextcolor),
              ),
            ),
            SizedBox(
              height: 5.0.h,
            ),
            Text(
              "⚡ Building Android Application Using Flutter \n      Framework.\n⚡ Creating Application Backend In Firebase. \n⚡ Building Android Application Using Modern Android  \n      Development Practices.\n",
              style: TextStyle(
                fontSize: 9.5.sp,
                color: kTextbgcolor,
              ),
            ),
            const Divider(),
            const ContactScreen(),
            SizedBox(
              height: 8.5.h,
            ),
            Text(
              'Made With 😍 Love',
              style: TextStyle(
                fontSize: 6.sp,
                color: const Color(0xFF5B6478),
              ),
            ),
            Text(
              "©$_currentTime Vivek - All Rights Reserved",
              style: GoogleFonts.spectralSc(
                fontSize: 5.0.sp,
                color: KTextcolor,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

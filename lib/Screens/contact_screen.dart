import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/kcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Social Buttons/social_buttons.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            "  Contact Me",
            style: GoogleFonts.satisfy(
              fontSize: 17.0.sp,
              color: KTextcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
              const IconButton(
                color: Colors.redAccent,
                icon: FaIcon(FontAwesomeIcons.at),
                onPressed: _sendingMails,
              ),
            ),
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
          ],
        ),

        //**For Resume**//
        textButton(
          TextButton(
            style: const ButtonStyle(),
            onPressed: () {},
            child: const Text(""),
          ),
        ),
        const Divider(),
        SizedBox(
          height: 7.0.h,
        ),
        Text(
          "Address",
          style: GoogleFonts.satisfy(
            fontSize: 20.0.sp,
            color: KTextcolor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SelectableText(
          "HEADWALI (JHAJRA) NEAR NIMBUS ACADEMY \nP.O: SUDHOWALA \nPIN: 248015,DEHRADUN, \nUTTARAKHAND, INDIA",
          style: TextStyle(
            fontSize: 8.sp,
            color: kTextbgcolor,
          ),
        ),
        const Divider(),
        SizedBox(
          height: 7.0.h,
        ),
        Text(
          "Phone Number",
          style: GoogleFonts.satisfy(
            fontSize: 17.0.sp,
            color: KTextcolor,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          child: Text(
            "📞 +91 7830056243",
            style: TextStyle(
              fontSize: 9.sp,
              color: kTextbgcolor,
            ),
          ),
          onTap: _makingPhonecall,
        ),
      ],
    );
  }
}

//** Sending Mail */
_sendingMails() async {
  const url = "mailto:vk662967@gmail.com";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Could Not Launch $url";
  }
}

//** Calling  */
_makingPhonecall() async {
  const url = "tel:7830056243";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Could Not Launch $url";
  }
}

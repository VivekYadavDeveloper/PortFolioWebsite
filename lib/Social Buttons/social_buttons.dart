import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/kcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

//**** For Social Media Icons ****/
Widget iconButton(IconButton faIcon) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        iconSize: 5.0.h,
        icon: faIcon,
        onPressed: () {},
      ),
    ),
  );
}

//**** For Downloading My Resume ****/
Widget textButton(TextButton button) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: kTextBtncolor,
      ),
      onPressed: () {
        const uri =
            "https://drive.google.com/file/d/1k87vktYCfAUY17MV13wTWKphIzX2bmqw/view?usp=sharing";
        _launchURL(uri);
        print("Open PDF");
      },
      label: Text(
        "See My Resume",
        style: GoogleFonts.spectralSc(color: Colors.white),
      ),
      icon: const FaIcon(
        FontAwesomeIcons.filePdf,
        size: 15,
        color: Colors.redAccent,
      ),
    ),
  );
}

//*** For Launching URls */
Future<void> _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print("Could Not Launch $url");
  }
}

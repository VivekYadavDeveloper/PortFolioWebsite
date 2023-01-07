import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Constant/constant.dart';
import '../../Theme/theme_model.dart';

languageList(Color themeData) {
  return Container(
    decoration: BoxDecoration(
      image: const DecorationImage(image: NetworkImage("assets/Profile.gif")),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: AppColors.rawShadow,
          blurRadius: 12.0,
          spreadRadius: .10,
          offset: const Offset(0, 7),
        ),
      ],
      color: themeData,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

//:**** TODO //
cardWidgets(
  String title,
  String subTitle,
  BuildContext context,
  Color color,
  Color shadowColor,
) {
  var themeChange = Provider.of<ThemeNotifier>(context).darkTheme;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 150,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: themeChange ? AppColors.mirage : AppColors.purpelColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: shadowColor,
            offset: const Offset(0.0, 5.0),
            blurRadius: 6.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Card(
        color: color,
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
                color: themeChange ? AppColors.blackPearl : Colors.white,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subTitle,
            style: TextStyle(
              color: themeChange ? AppColors.blackPearl : Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

///*** Tap able  custom list tile
onTapCardWidgets(String title, String subTitle, BuildContext context,
    Color color, Color shadowColor, Function? function) {
  var themeChange = Provider.of<ThemeNotifier>(context).darkTheme;
  return Padding(
    padding: const EdgeInsets.only(right: 50.0),
    child: Container(
      height: 150,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: themeChange ? AppColors.mirage : AppColors.purpelColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: shadowColor,
            offset: const Offset(0.0, 5.0),
            blurRadius: 6.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Card(
        color: color,
        child: ListTile(
          onTap: () {
            function;
            print("Github");
          },
          title: Text(
            title,
            style: TextStyle(
                color: themeChange ? AppColors.blackPearl : Colors.white,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subTitle,
            style: TextStyle(
              color: themeChange ? AppColors.blackPearl : Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

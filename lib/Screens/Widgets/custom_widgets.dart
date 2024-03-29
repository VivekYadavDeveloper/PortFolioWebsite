import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Constant/constant.dart';
import '../../Theme/theme_model.dart';
//: TODO 
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

///*** Tap able custom list tile
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

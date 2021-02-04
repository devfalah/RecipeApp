import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recipes/screens/all_recipes_screen.dart';
import 'package:recipes/screens/categories_screen.dart';
import 'package:recipes/screens/favorite_screen.dart';
import 'package:recipes/screens/info_screen.dart';
import 'package:recipes/utilities/tools_utilities.dart';

import 'home_screen.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  var _menuKey = GlobalKey();
  int _page = 2;
  List<Widget> _taps = [
    InfoScreen(),
    CategoriesScreen(),
    HomeScreen(),
    AllRecipesScreen(),
    FavoriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _taps[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _menuKey,
        index: _page,
        color: ToolsUtilities.mainColor,
        backgroundColor: ToolsUtilities.whiteColor,
        animationCurve: Curves.easeInOutSine,
        items: [
          Icon(
            Icons.info,
            color: ToolsUtilities.whiteColor,
            size: 20,
          ),
          Icon(
            Icons.calendar_view_day,
            color: ToolsUtilities.whiteColor,
            size: 20,
          ),
          Icon(
            Icons.whatshot,
            color: ToolsUtilities.whiteColor,
            size: 20,
          ),
          Icon(
            Icons.receipt,
            color: ToolsUtilities.whiteColor,
            size: 20,
          ),
          Icon(
            Icons.favorite,
            color: ToolsUtilities.whiteColor,
            size: 20,
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}

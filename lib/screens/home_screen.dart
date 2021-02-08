import 'package:flutter/material.dart';
import 'package:recipes/utilities/tools_utilities.dart';
import 'package:recipes/widgets/featured_card.dart';
import 'package:recipes/widgets/heading_cover.dart';
import 'package:recipes/widgets/new_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingCover(),
              title(text: 'Featured Recipes'),
              FeaturedCard(),
              title(text: 'New'),
              NewCard(),
            ],
          ),
        ),
      ),
    );
  }

  Padding title({text}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: ToolsUtilities.secondColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

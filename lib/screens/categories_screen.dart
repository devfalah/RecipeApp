import 'package:flutter/material.dart';
import 'package:recipes/utilities/tools_utilities.dart';
import 'package:recipes/widgets/categories_card.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _headingCover(context),
          CategoriesCards(),
        ],
      ),
    );
  }

  Widget _headingCover(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ToolsUtilities.mainColor,
            image: DecorationImage(
              image: NetworkImage(
                ToolsUtilities.imageRcipe[8],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130.0, left: 130),
          child: Text(
            "Categories",
            style: TextStyle(
              color: ToolsUtilities.whiteColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

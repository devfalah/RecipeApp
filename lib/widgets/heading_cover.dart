import 'package:flutter/material.dart';
import 'package:recipes/utilities/tools_utilities.dart';

class HeadingCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ToolsUtilities.mainColor,
            image: DecorationImage(
              image: NetworkImage(
                ToolsUtilities.imageRcipe[0],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130.0, left: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Daily New Recipe",
                style: TextStyle(
                  color: ToolsUtilities.whiteColor,
                  fontSize: 20,
                ),
              ),
              Text(
                "Discovery",
                style: TextStyle(
                  color: ToolsUtilities.whiteColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

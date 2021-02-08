import 'package:flutter/material.dart';
import 'package:recipes/utilities/tools_utilities.dart';
import 'package:recipes/widgets/tabs_content.dart';

class DetailScreen extends StatelessWidget {
  final String imageUrl;

  const DetailScreen({Key key, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ToolsUtilities.mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _headingCover(context, imageUrl),
            _headingContent(),
            _headingLine(),
            TabContent(
              imageUrl: imageUrl,
            ),
          ],
        ),
      ),
    );
  }

  Padding _headingLine() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Divider(
        thickness: 3,
        color: ToolsUtilities.whiteColor,
      ),
    );
  }

  Widget _headingContent() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.timer,
                color: ToolsUtilities.whiteColor,
                size: 25,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "60 Min",
                style: TextStyle(
                  color: ToolsUtilities.whiteColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.people,
                color: ToolsUtilities.whiteColor,
                size: 25,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "4 People",
                style: TextStyle(
                  color: ToolsUtilities.whiteColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.room_service,
                color: ToolsUtilities.whiteColor,
                size: 25,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "60 Min",
                style: TextStyle(
                  color: ToolsUtilities.whiteColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _headingCover(BuildContext context, imageUrl) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ToolsUtilities.mainColor,
            image: DecorationImage(
              image: NetworkImage(
                imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
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

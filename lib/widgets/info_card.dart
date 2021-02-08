import 'package:flutter/material.dart';
import 'package:recipes/screens/info_screen.dart';
import 'package:recipes/utilities/tools_utilities.dart';

class InfoCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  const InfoCard({Key key, this.text, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title(text: text),
          Card(
            child: Column(
              children: [
                Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    ToolsUtilities.ourVisionPargraph,
                    style: TextStyle(
                      fontSize: 18,
                      color: ToolsUtilities.secondColor,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

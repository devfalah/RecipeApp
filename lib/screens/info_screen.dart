import 'package:flutter/material.dart';
import 'package:recipes/utilities/tools_utilities.dart';
import 'package:recipes/widgets/SocialIconButton.dart';
import 'package:recipes/widgets/contact_form.dart';
import 'package:recipes/widgets/info_card.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 80,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headingCover(context),
              title(text: 'We Here For You'),
              InfoCard(
                text: "Our Vission",
                imageUrl: ToolsUtilities.imageRcipe[6],
              ),
              InfoCard(
                text: "Our Mission",
                imageUrl: ToolsUtilities.imageRcipe[3],
              ),
              title(text: 'Contact Us'),
              ContactUsForm(),
              title(text: "Follow Us"),
              SocialIconButtons()
            ],
          ),
        ),
      ),
    );
  }

  Widget _headingCover(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ToolsUtilities.mainColor,
            image: DecorationImage(
              image: NetworkImage(
                ToolsUtilities.imageRcipe[9],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              "About Our Recipe Community",
              style: TextStyle(
                color: ToolsUtilities.whiteColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Padding title({text}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      text,
      style: TextStyle(
        color: ToolsUtilities.mainColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

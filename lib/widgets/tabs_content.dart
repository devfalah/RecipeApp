import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipes/screens/video_screen.dart';
import 'package:recipes/utilities/tools_utilities.dart';

class TabContent extends StatefulWidget {
  final String imageUrl;

  const TabContent({Key key, this.imageUrl}) : super(key: key);
  @override
  _TabContentState createState() => _TabContentState();
}

class _TabContentState extends State<TabContent>
    with SingleTickerProviderStateMixin {
  var _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          indicatorColor: ToolsUtilities.whiteColor,
          tabs: [
            Tab(
              icon: Icon(
                Icons.receipt,
              ),
              text: "Description",
            ),
            Tab(
              icon: Icon(
                Icons.fastfood,
              ),
              text: "Integrations",
            ),
            Tab(
              icon: Icon(
                Icons.videocam,
              ),
              text: "Video",
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.45,
          child: TabBarView(
            controller: _tabController,
            children: [
              _descriptionTab(),
              _integrationsTab(),
              _videoTab(widget.imageUrl),
            ],
          ),
        ),
      ],
    );
  }

  Padding _descriptionTab() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ToolsUtilities.whiteColor.withOpacity(0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lets Cooking!",
                style: TextStyle(
                  color: ToolsUtilities.mainColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                ToolsUtilities.descriptionPargraph +
                    ToolsUtilities.descriptionPargraph,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _integrationsTab() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ToolsUtilities.whiteColor.withOpacity(0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "You will need:",
                style: TextStyle(
                  color: ToolsUtilities.mainColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.99,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: ToolsUtilities.mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: ToolsUtilities.ingredients
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "- $e",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16,
                              color: ToolsUtilities.whiteColor,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _videoTab(imageUrl) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ToolsUtilities.mainColor,
              image: DecorationImage(
                image: NetworkImage(
                  imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Center(
          child: IconButton(
            icon: Icon(
              FontAwesomeIcons.playCircle,
              color: ToolsUtilities.whiteColor,
              size: 60,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => VideoScreen(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

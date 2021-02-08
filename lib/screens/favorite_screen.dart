import 'package:flutter/material.dart';
import 'package:recipes/utilities/tools_utilities.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FavoriteS Recipes"),
        centerTitle: true,
        backgroundColor: ToolsUtilities.mainColor,
      ),
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        child: ListView.builder(
            itemCount: ToolsUtilities.imageRcipe.length,
            itemBuilder: (context, index) {
              return _favoriteCard(ToolsUtilities.imageRcipe[index], context);
            }),
      )),
    );
  }

  Widget _favoriteCard(String imageUrl, BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width * 0.99,
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
        Container(
          margin: EdgeInsets.only(left: 8, right: 6),
          width: MediaQuery.of(context).size.width * 0.969,
          height: MediaQuery.of(context).size.height * 0.12,
          decoration: BoxDecoration(
            color: ToolsUtilities.whiteColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              bottom: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recipe Name",
                  style: TextStyle(
                    color: ToolsUtilities.secondColor,
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.timer,
                          color: ToolsUtilities.secondColor,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "60 Minutes",
                          style: TextStyle(
                            color: ToolsUtilities.secondColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "The short discription",
                        style: TextStyle(
                          color: ToolsUtilities.secondColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 8.0,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

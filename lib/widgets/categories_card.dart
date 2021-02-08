import 'package:flutter/material.dart';
import 'package:recipes/screens/all_recipes_screen.dart';
import 'package:recipes/utilities/tools_utilities.dart';

class CategoriesCards extends StatelessWidget {
  const CategoriesCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Transform.translate(
        offset: Offset(0, -15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height * 0.61,
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            children: [
              CategoryCard(
                imagePath: "assets/images/1.png",
                title: "Fast Food",
              ),
              CategoryCard(
                imagePath: "assets/images/category2.png",
                title: "Pasta",
              ),
              CategoryCard(
                imagePath: "assets/images/category3.png",
                title: "Coffee",
              ),
              CategoryCard(
                imagePath: "assets/images/1.png",
                title: "Main",
              ),
              CategoryCard(
                imagePath: "assets/images/1.png",
                title: "Breakfast",
              ),
              CategoryCard(
                imagePath: "assets/images/1.png",
                title: "Sweets",
              ),
              CategoryCard(
                imagePath: "assets/images/1.png",
                title: "Diet",
              ),
              CategoryCard(
                imagePath: "assets/images/1.png",
                title: "Asian",
              ),
              CategoryCard(
                imagePath: "assets/images/1.png",
                title: "Salads",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imagePath, title;
  const CategoryCard({this.imagePath, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AllRecipesScreen(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: ToolsUtilities.mainColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
              Text(
                title,
                style: TextStyle(
                  color: ToolsUtilities.whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

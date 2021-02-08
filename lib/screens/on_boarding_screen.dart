import 'package:flutter/material.dart';
import 'package:recipes/screens/start_screen.dart';
import 'package:recipes/utilities/on_boarding_model.dart';
import 'package:recipes/utilities/tools_utilities.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

List<OnBoardingModel> sliderData = [
  OnBoardingModel('assets/images/image-1.png', 'More than 1000 Food Recipes'),
  OnBoardingModel('assets/images/image-2.png', 'the second title'),
  OnBoardingModel('assets/images/image-3.png', 'Third title'),
];

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  bool atEnd = false;
  PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: sliderData.length,
      onPageChanged: (index) {
        if (index == (sliderData.length - 1)) {
          setState(() {
            atEnd = true;
            currentPage = index;
          });
        } else {
          setState(() {
            atEnd = false;
            currentPage = index;
          });
        }
      },
      itemBuilder: (context, index) {
        return Scaffold(
          backgroundColor: ToolsUtilities.mainColor,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              FlatButton(
                onPressed: () {
                  if (atEnd) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StartScreen(),
                      ),
                    );
                  } else {
                    _pageController.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  }
                },
                child: Text(
                  atEnd ? "Go To Home" : "Skip",
                  style: TextStyle(
                    color: ToolsUtilities.whiteColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _sliderImage(),
              _headLine(),
              SmoothPageIndicator(
                effect: WormEffect(
                  activeDotColor: ToolsUtilities.secondColor,
                  dotColor: ToolsUtilities.whiteColor,
                ),
                controller: _pageController,
                count: sliderData.length,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _sliderImage() {
    return Container(
      width: 800,
      height: 350,
      decoration: BoxDecoration(
        color: ToolsUtilities.whiteColor,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: ExactAssetImage(sliderData[currentPage].image),
        ),
      ),
    );
  }

  Widget _headLine() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        sliderData[currentPage].title,
        style: TextStyle(
          color: ToolsUtilities.whiteColor,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

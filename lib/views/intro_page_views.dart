import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_screen.dart';

int selectedIndex = 0;

class IntroPageViews extends StatefulWidget {
  @override
  _IntroPageViewsState createState() => _IntroPageViewsState();
}

class _IntroPageViewsState extends State<IntroPageViews> {
  Timer t;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    Map<int, Widget> listOfWidgets = {
      0: Column(
        children: [
          SizedBox(
            height: deviceSize.height * 0.072,
          ),
          SvgPicture.asset(
            'assets/page_view_1.svg',
            height: deviceSize.height * 0.37,
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          getPageSelection(0),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          Text(
            'Find Food You Love',
            style: TextStyle(fontSize: 30, fontFamily: 'Roboto-Regular'),
          ),
          SizedBox(
            height: deviceSize.height * 0.035,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52),
            child: Text(
              '    Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontFamily: 'Metropolis-Medium'),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      1: Column(
        children: [
          SizedBox(
            height: deviceSize.height * 0.072,
          ),
          SvgPicture.asset(
            'assets/page_view_2.svg',
            height: deviceSize.height * 0.37,
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          getPageSelection(1),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          Text(
            'Fast Delivery',
            style: TextStyle(fontSize: 30, fontFamily: 'Roboto-Regular'),
          ),
          SizedBox(
            height: deviceSize.height * 0.035,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52),
            child: Text(
              'Fast food delivery to your home, office wherever you are',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontFamily: 'Metropolis-Medium'),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      2: Column(
        children: [
          SizedBox(
            height: deviceSize.height * 0.072,
          ),
          SvgPicture.asset(
            'assets/page_view_3.svg',
            height: deviceSize.height * 0.37,
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          getPageSelection(2),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          Text(
            'Live Tracking',
            style: TextStyle(fontSize: 30, fontFamily: 'Roboto-Regular'),
          ),
          SizedBox(
            height: deviceSize.height * 0.035,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52),
            child: Text(
              'Real time tracking of your food on the app once you placed the order',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontFamily: 'Metropolis-Medium'),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    };

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: deviceSize.height / 1.5,
                width: deviceSize.width,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    print(index);
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  children: [
                    listOfWidgets[selectedIndex],
                  ],
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.03,
              ),
              Container(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      if (selectedIndex >= 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      } else {
                        selectedIndex++;
                      }
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xff030557),
                  elevation: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.3,
                      ),
                      SvgPicture.asset(
                        'assets/next_icon.svg',
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.035,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.06,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getPageSelection(int currentIndex) {
  return Container(
    width: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        3,
        (index) => Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 9,
          width: currentIndex == index ? 15 : 9,
          decoration: BoxDecoration(
            color: selectedIndex == index ? Colors.redAccent : Colors.grey[400],
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    ),
  );
}

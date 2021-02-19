import 'package:flutter/material.dart';
import 'package:food_raja_app/components/colors.dart';

import '../animated_bottom_navigation_bar.dart';

class AnimatedBottomBar extends StatefulWidget {
  final Function(int) onTap;
  final bottomNavIndex;
  const AnimatedBottomBar({Key key, this.onTap, this.bottomNavIndex})
      : super(key: key);

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> animation;

  final iconList = <Map<String, String>>[
    {
      'icon': 'assets/menu_icon.svg',
      'label': 'Menu',
    },
    {
      'icon': 'assets/offers_icon.svg',
      'label': 'Offers',
    },
    {
      'icon': 'assets/profile_icon.svg',
      'label': 'Profile',
    },
    {
      'icon': 'assets/more_icon.svg',
      'label': 'More',
    },
  ];

  @override
  void initState() {
    _startAnimation();
    super.initState();
  }

  _startAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
        shadowColor: Color(0xff000000),
        gapWidth: 60,
        notchMargin: 8,
        elevation: 20,
        iconWithLabel: iconList,
        splashRadius: 20,
        backgroundColor: bottomNavigationColor,
        activeIndex: widget.bottomNavIndex,
        activeColor: Color(0xff030357),
        splashColor: themeBlueColor.withOpacity(0.7),
        inactiveColor: themeGrayColor,
        notchAndCornersAnimation: animation,
        splashSpeedInMilliseconds: 400,
        // notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 25,
        rightCornerRadius: 25,
        // height: Size.fromHeight(70).height,
        onTap: (index) => widget.onTap(index));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

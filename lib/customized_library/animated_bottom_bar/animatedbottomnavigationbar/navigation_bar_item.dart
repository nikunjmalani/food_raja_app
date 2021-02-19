import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'bubble_selection_painter.dart';

class NavigationBarItem extends StatelessWidget {
  final bool isActive;
  final double bubbleRadius;
  final double maxBubbleRadius;
  final Color bubbleColor;
  final Color activeColor;
  final Color inactiveColor;
  final Map<String, String> iconData;
  final double iconScale;
  final double iconSize;
  final VoidCallback onTap;
  final String fontFamily;

  NavigationBarItem({
    this.isActive,
    this.bubbleRadius,
    this.maxBubbleRadius,
    this.bubbleColor,
    this.activeColor,
    this.inactiveColor,
    this.iconData,
    this.iconScale,
    this.iconSize,
    this.onTap,
    this.fontFamily,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: BubblePainter(
            bubbleRadius: isActive ? bubbleRadius : 0,
            bubbleColor: bubbleColor,
            maxBubbleRadius: maxBubbleRadius,
          ),
          child: InkWell(
            child: Transform.scale(
              scale: isActive ? iconScale : 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      '${iconData['icon']}',
                      color: isActive ? activeColor : inactiveColor,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${iconData['label']}",
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 12,
                          color: isActive ? activeColor : inactiveColor),
                    ),
                  ],
                ),
              ),
              //color: isActive ? activeColor : inactiveColor,
            ),
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}

class GapItem extends StatelessWidget {
  final double width;

  GapItem({this.width});

  @override
  Widget build(BuildContext context) => Container(width: width);
}

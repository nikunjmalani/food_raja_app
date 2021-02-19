import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Component {
  Widget getTextField(Size deviceSize,
      {@required TextEditingController controller,
      @required String hintText,
      Widget icon,
      String labelText}) {
    return Container(
      height: 56,
      width: deviceSize.width,
      padding: EdgeInsets.only(left: deviceSize.width * 0.06),
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: TextField(
          controller: controller,
          onChanged: (value) {},
          decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(
                fontSize: 14,
                color: Color(0xffB6B7B7),
              ),
              prefixIcon: icon,
              hintText: hintText,
              hintStyle: TextStyle(
                fontFamily: 'Metropolis-Regular',
                color: Color(0xffB6B7B7),
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }

  Widget getBotton(
      {@required BuildContext context,
      @required Size deviceSize,
      @required String title,
      @required Color color,
      @required onPress,
      Icon icon}) {
    return Container(
      width: deviceSize.width,
      height: 56,
      child: RaisedButton(
        onPressed: onPress,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: color,
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            icon != null
                ? Icon(
                    icon.icon,
                    color: icon.color,
                    size: icon.size,
                  )
                : Container(),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Metropolis-SemiBold'),
            ),
            icon != null
                ? SizedBox(
                    width: 30,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  Widget getMoreScreenOptions(
      {@required Size deviceSize,
      @required String title,
      Function Ontap,
      String notifications,
      String svgPath}) {
    return GestureDetector(
      onTap: Ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: 15),
              height: 100,
              width: deviceSize.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300], spreadRadius: 1, blurRadius: 3),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: deviceSize.width * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Center(child: SvgPicture.asset(svgPath)),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 18),
                      ),
                      notifications != null
                          ? SizedBox(
                              width: deviceSize.width * 0.24,
                            )
                          : Container(),
                      notifications != null
                          ? Container(
                              margin: EdgeInsets.only(right: 5),
                              height: deviceSize.height * 0.03,
                              width: deviceSize.height * 0.03,
                              decoration: BoxDecoration(
                                  color: Colors.red, shape: BoxShape.circle),
                              child: Center(
                                child: Text(notifications,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10)),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 32,
              child: Container(
                height: deviceSize.width * 0.09,
                width: deviceSize.width * 0.09,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(2, 0),
                        color: Colors.grey[300],
                        blurRadius: 2,
                        spreadRadius: 1)
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

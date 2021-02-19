import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/views/login_screen.dart';
import 'package:food_raja_app/views/signup_screen.dart';

import '../home_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer t;

  changeScreen() async {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      t = Timer.periodic(Duration(seconds: 2), (timer) {
        t.cancel();
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => HomeScreen()));
        // .push(MaterialPageRoute(builder: (_) => SplashScreenMenu()));
      });
    });
  }

  @override
  void dispose() {
    t.cancel();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Material(
      child: Stack(
        children: [
          Container(
            color: Color(0xff030A47),
          ),
          Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Background_icons.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/Logo.png'),
              height: deviceSize.height * 0.3,
            ),
          ),
        ],
      ),
    );
  }
}

class SplashScreenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String svg = 'assets/splash_2.svg';
    Widget background = SvgPicture.asset(svg);
    final deviceSize = MediaQuery.of(context).size;
    final component = Component();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.black, statusBarBrightness: Brightness.dark),
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: deviceSize.height / 1.8,
                  width: double.infinity,
                  child: CustomPaint(
                    painter: MyCustomePainter(),
                    child: background,
                  ),
                ),
                Positioned(
                  top: deviceSize.height * 0.14,
                  right: deviceSize.width / 3.8,
                  child: Align(
                    child: Image(
                      image: AssetImage('assets/Logo.png'),
                      height: deviceSize.height * 0.25,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Metropolis-Medium',
                        color: Color(0xff7c7d7e)),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  component.getBotton(
                      context: context,
                      deviceSize: deviceSize,
                      title: 'LogIn',
                      color: Color(0xff030A57),
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 56,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xff030A57)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Create Account',
                            style: TextStyle(color: Color(0xff030A57)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var controllPoint1 = Offset(size.width / 2.4, size.height - 170);
    var controllPoint2 = Offset(size.width / 1.6, size.height + 50);
    var endpoint = Offset(size.width, size.height - 120);
    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..cubicTo(controllPoint1.dx, controllPoint1.dy, controllPoint2.dx,
          controllPoint2.dy, endpoint.dx, endpoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    Path path2 = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..cubicTo(controllPoint1.dx, controllPoint1.dy, controllPoint2.dx,
          controllPoint2.dy, endpoint.dx, endpoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawShadow(path2, Color(0xff030A57).withOpacity(0.6), 8, false);
    canvas.drawPath(path, Paint()..color = Color(0xff030A57));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

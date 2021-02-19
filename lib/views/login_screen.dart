import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_raja_app/components/colors.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/views/enter_otp.dart';
import 'package:food_raja_app/views/reset_password.dart';
import 'package:food_raja_app/views/signup_screen.dart';

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final component = Component();
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(deviceSize.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: deviceSize.height * 0.012,
              ),
              Text(
                'LogIn',
                style: TextStyle(fontSize: 30, fontFamily: 'Roboto-Regular'),
              ),
              SizedBox(
                height: deviceSize.height * 0.018,
              ),
              Text(
                'Add Your Detail To Login',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff7C7D7E),
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.055,
              ),
              component.getTextField(deviceSize,
                  controller: _emailController, hintText: 'Your Email'),
              SizedBox(
                height: deviceSize.height * 0.034,
              ),
              component.getTextField(deviceSize,
                  controller: _passwordController, hintText: 'Password'),
              SizedBox(
                height: deviceSize.height * 0.034,
              ),
              component.getBotton(
                  context: context,
                  deviceSize: deviceSize,
                  title: 'LogIn',
                  color: Color(0xff030357),
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EnterOtp(),
                      ),
                    );
                  }),
              SizedBox(
                height: deviceSize.height * 0.034,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPassword(),
                    ),
                  );
                },
                child: Text(
                  'Forgot Password!',
                  style: TextStyle(
                      fontSize: 14,
                      color: themeBlueColor,
                      fontFamily: 'Metropolis-Medium'),
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.032,
              ),
              Divider(
                height: 0.5,
                color: greyTextColor,
                endIndent: 35,
                indent: 35,
                thickness: 0.5,
              ),
              SizedBox(
                height: deviceSize.height * 0.032,
              ),
              Text(
                'Or Login with',
                style: TextStyle(
                  fontSize: 14,
                  color: greyTextColor,
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.032,
              ),
              getSocialSignInBotton(
                  color: Color(0xff3B5998),
                  deviceSize: deviceSize,
                  svgPath: 'assets/facebook_logo.svg'),
              SizedBox(
                height: deviceSize.height * 0.032,
              ),
              getSocialSignInBotton(
                  color: Color(0xffDD4B39),
                  deviceSize: deviceSize,
                  svgPath: 'assets/google_logo.svg'),
              SizedBox(
                height: deviceSize.height * 0.041,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an Account? ',
                    style: TextStyle(color: greyTextColor, fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'SignUp',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff030357),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getSocialSignInBotton({Size deviceSize, Color color, String svgPath}) {
    return Container(
      width: deviceSize.width,
      height: 56,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: color,
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgPath,
              height: 15,
            ),
            SizedBox(
              width: deviceSize.height * 0.04,
            ),
            Text(
              'Login With Facebook',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

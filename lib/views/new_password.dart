import 'package:flutter/material.dart';
import 'package:food_raja_app/components/colors.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/views/login_screen.dart';

TextEditingController _newPassword = TextEditingController();
TextEditingController _confirmPassword = TextEditingController();

class NewPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final component = Component();
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.all(deviceSize.width * 0.04),
        child: Column(
          children: [
            SizedBox(
              height: deviceSize.height * 0.065,
            ),
            Text(
              'New Password',
              style: TextStyle(
                fontSize: deviceSize.height * 0.037,
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.02,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Please enter your email to receive a link to  create a new password via email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: greyTextColor,
                ),
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.047,
            ),
            component.getTextField(deviceSize,
                controller: _newPassword, hintText: 'New Password'),
            SizedBox(
              height: deviceSize.height * 0.04,
            ),
            component.getTextField(deviceSize,
                controller: _confirmPassword, hintText: 'Confirm Password'),
            SizedBox(
              height: deviceSize.height * 0.04,
            ),
            component.getBotton(
              context: context,
              deviceSize: deviceSize,
              title: 'Next',
              color: Color(0xff030357),
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/views/login_screen.dart';

TextEditingController _emailController = TextEditingController();

class ResetPassword extends StatelessWidget {
  final component = Component();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.all(deviceSize.width * 0.04),
        child: Column(
          children: [
            SizedBox(
              height: deviceSize.height * 0.06,
            ),
            Text(
              'Reset Password',
              style: TextStyle(
                fontSize: deviceSize.height * 0.036,
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.03,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Please enter your email to receive a link to  create a new password via email',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.07,
            ),
            component.getTextField(deviceSize,
                controller: _emailController, hintText: 'Email'),
            SizedBox(
              height: deviceSize.height * 0.04,
            ),
            component.getBotton(
              context: context,
              deviceSize: deviceSize,
              title: 'Send',
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

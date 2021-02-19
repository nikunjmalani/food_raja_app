import 'package:flutter/material.dart';
import 'package:food_raja_app/components/colors.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/views/enter_otp.dart';
import 'package:food_raja_app/views/login_screen.dart';

TextEditingController _nameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _mobileNumberController = TextEditingController();
TextEditingController _addressController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _confirmPasswordController = TextEditingController();

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final component = Component();
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(deviceSize.width * 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'SignUp',
              style: TextStyle(
                  fontSize: deviceSize.height * 0.035,
                  fontFamily: 'Roboto-Regular'),
            ),
            Text(
              'Add Your Detail To SignUp',
              style: TextStyle(color: greyTextColor),
            ),
            component.getTextField(deviceSize,
                controller: _nameController, hintText: 'Name'),
            component.getTextField(deviceSize,
                controller: _emailController, hintText: 'Email'),
            component.getTextField(deviceSize,
                controller: _mobileNumberController, hintText: 'Mobile No'),
            component.getTextField(deviceSize,
                controller: _addressController, hintText: 'Address'),
            component.getTextField(deviceSize,
                controller: _passwordController, hintText: 'Password'),
            component.getTextField(deviceSize,
                controller: _confirmPasswordController,
                hintText: 'Confirm Password'),
            component.getBotton(
                context: context,
                deviceSize: deviceSize,
                title: 'SignUp',
                color: Color(0xff030557),
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EnterOtp(),
                    ),
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an Account? ',
                  style: TextStyle(color: greyTextColor, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff030357),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

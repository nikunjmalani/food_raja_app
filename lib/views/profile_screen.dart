import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_raja_app/components/components.dart';

import 'home_screen.dart';

TextEditingController _nameField = TextEditingController();
TextEditingController _emailField = TextEditingController();
TextEditingController _mobileField = TextEditingController();
TextEditingController _addressField = TextEditingController();
TextEditingController _passwordField = TextEditingController();
TextEditingController _confirmPasswordField = TextEditingController();

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final component = Component();
    return Material(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: deviceSize.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/burger.jpg',
                              ),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: Color(0xff030357),
                            size: 14,
                          ),
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                                fontSize: 11,
                                color: Color(0xff030357),
                                fontFamily: 'Metropolis-Medium'),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                      Text(
                        'Hi there Emilia!',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Metropolis-Bold'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: deviceSize.height * 0.14,
                        height: 29,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xff030357),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'SignOut',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontFamily: 'Metropolis-SemiBold'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset('assets/logout_icon.svg')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                component.getTextField(deviceSize,
                    controller: _nameField, labelText: 'Name'),
                SizedBox(
                  height: deviceSize.height * 0.015,
                ),
                component.getTextField(deviceSize,
                    controller: _emailField, labelText: 'Email'),
                SizedBox(
                  height: deviceSize.height * 0.015,
                ),
                component.getTextField(deviceSize,
                    controller: _mobileField, labelText: 'Mobile No'),
                SizedBox(
                  height: deviceSize.height * 0.015,
                ),
                component.getTextField(deviceSize,
                    controller: _addressField, labelText: 'Address'),
                SizedBox(
                  height: deviceSize.height * 0.015,
                ),
                component.getTextField(deviceSize,
                    controller: _passwordField, labelText: 'Password'),
                SizedBox(
                  height: deviceSize.height * 0.015,
                ),
                component.getTextField(deviceSize,
                    controller: _confirmPasswordField,
                    labelText: 'Confirm Password'),
                SizedBox(
                  height: deviceSize.height * 0.015,
                ),
                component.getBotton(
                  context: context,
                  deviceSize: deviceSize,
                  title: 'Save',
                  color: Color(0xff030357),
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

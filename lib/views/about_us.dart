import 'package:flutter/material.dart';
import 'package:food_raja_app/widget/appbar.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(context: context, title: 'About us', isBackIcon: true),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: deviceSize.height * 0.04),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.5,
                      blurRadius: 5,
                      offset: Offset(0, 5)),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Text(
                '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ''',
                style:
                    TextStyle(fontSize: 14, fontFamily: 'Metropolis-Regular'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

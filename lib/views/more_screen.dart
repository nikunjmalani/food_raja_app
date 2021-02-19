import 'package:flutter/material.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/views/about_us.dart';
import 'package:food_raja_app/views/inbox_screen.dart';
import 'package:food_raja_app/views/my_order.dart';
import 'package:food_raja_app/views/payment_detail.dart';

import 'notification_screen.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final component = Component();
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: deviceSize.height * 0.02),
              component.getMoreScreenOptions(
                  deviceSize: deviceSize,
                  title: 'Payment Details',
                  svgPath: 'assets/income_icon.svg',
                  Ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentDetail(),
                      ),
                    );
                  }),
              SizedBox(height: deviceSize.height * 0.02),
              component.getMoreScreenOptions(
                  deviceSize: deviceSize,
                  title: 'My Orders',
                  svgPath: 'assets/shopping_icon.svg',
                  Ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyOrder(),
                      ),
                    );
                  }),
              SizedBox(height: deviceSize.height * 0.02),
              component.getMoreScreenOptions(
                  deviceSize: deviceSize,
                  title: 'Notification',
                  svgPath: 'assets/notification_icon.svg',
                  notifications: '10',
                  Ontap: () {
                    print('notification');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationScreen(),
                      ),
                    );
                  }),
              SizedBox(height: deviceSize.height * 0.02),
              component.getMoreScreenOptions(
                  deviceSize: deviceSize,
                  title: 'Inbox',
                  svgPath: 'assets/inbox_icon.svg',
                  Ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InboxScreen(),
                      ),
                    );
                  }),
              SizedBox(height: deviceSize.height * 0.02),
              component.getMoreScreenOptions(
                  deviceSize: deviceSize,
                  title: 'About Us',
                  svgPath: 'assets/info_icon.svg',
                  Ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutUs(),
                      ),
                    );
                  }),
              SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }
}

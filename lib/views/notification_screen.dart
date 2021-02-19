import 'package:flutter/material.dart';
import 'package:food_raja_app/widget/appbar.dart';

List<Map<String, dynamic>> notificationList = [
  {
    'title': 'Your orders has been Delivered',
    'time': '12:20',
    'isSelected': false
  },
  {
    'title': 'Your orders has been picked up',
    'time': '12:10',
    'isSelected': false
  },
  {
    'title': 'Your orders has been Delivered',
    'time': '12:20',
    'isSelected': false
  },
  {
    'title': 'Your orders has been picked up',
    'time': '12:10',
    'isSelected': false
  },
  {
    'title': 'Your orders has been Delivered',
    'time': '12:20',
    'isSelected': false
  },
  {
    'title':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'time': '12:10',
    'isSelected': false
  },
  {
    'title': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '12:20',
    'isSelected': false
  },
  {
    'title': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '12:10',
    'isSelected': false
  },
  {
    'title': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '12:20',
    'isSelected': false
  },
  {
    'title': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '12:10',
    'isSelected': false
  },
  {
    'title': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '12:20',
    'isSelected': false
  },
  {
    'title': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '12:10',
    'isSelected': false
  },
  {
    'title': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '12:20',
    'isSelected': false
  },
  {
    'title': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '12:10',
    'isSelected': false
  },
];

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar:
          appBar(context: context, title: 'Notifications', isBackIcon: true),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: notificationList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      notificationList[index]['isSelected'] =
                          !notificationList[index]['isSelected'];
                    });
                  },
                  child: Container(
                    height: 73,
                    decoration: BoxDecoration(
                      color: notificationList[index]['isSelected']
                          ? Colors.grey[200]
                          : Colors.transparent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.circle,
                              size: deviceSize.height * 0.01,
                              color: Colors.redAccent,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: deviceSize.width * 0.825,
                                  child: Text(
                                    notificationList[index]['title'],
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Metropolis-SemiBold'),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(notificationList[index]['time']),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: deviceSize.height * 0.01),
                        notificationList[index]['isSelected']
                            ? Container(
                                height: 0.5,
                                width: deviceSize.width,
                                color: Colors.grey[300],
                              )
                            : Center(
                                child: Container(
                                  height: 0.5,
                                  width: deviceSize.width - 40,
                                  color: Colors.grey[300],
                                ),
                              ),
                      ],
                    ),
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

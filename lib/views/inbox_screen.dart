import 'package:flutter/material.dart';
import 'package:food_raja_app/widget/appbar.dart';

List<Map<String, dynamic>> inboxNotification = [
  {
    'title': 'MealMonkey Promotions',
    'time': '6th july',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
  },
  {
    'title': 'MealMonkey Promotions',
    'time': '6th july',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
  },
  {
    'title': 'MealMonkey Promotions',
    'time': '6th july',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
  },
  {
    'title': 'MealMonkey Promotions',
    'time': '6th july',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
  },
  {
    'title': 'MealMonkey Promotions',
    'time': '6th july',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
  },
  {
    'title': 'MealMonkey Promotions',
    'time': '6th july',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
  },
  {
    'title': 'MealMonkey Promotions',
    'time': '6th july',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
  },
  {
    'title': 'MealMonkey Promotions',
    'time': '6th july',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
  }
];

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(context: context, title: 'Inbox', isBackIcon: true),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: inboxNotification.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: deviceSize.height * 0.015,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.02,
                                ),
                                Text(
                                  inboxNotification[index]['title'],
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              inboxNotification[index]['time'],
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: deviceSize.height * 0.01,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 6,
                                child: Container(
                                  // width: deviceSize.width * 0.75,
                                  child: Text(
                                    inboxNotification[index]['description'],
                                    maxLines: 3,
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.star_border,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

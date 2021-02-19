import 'package:flutter/material.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/views/checkout_screen.dart';
import 'package:food_raja_app/widget/appbar.dart';

List<Map<String, dynamic>> data = [
  {'title': 'Beef Burger x1', 'value': '\$16'},
  {'title': 'Classic Burger x1', 'value': '\$14'},
  {'title': 'Cheese Chicken Burger x1', 'value': '\$17'},
  {'title': 'Chicken Legs Basket x1', 'value': '\$12'},
  {'title': 'French Fries Large x1', 'value': '\$6'},
];

class MyOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final component = Component();
    return Scaffold(
      appBar: appBar(context: context, title: 'My Order', isBackIcon: true),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: deviceSize.width * 0.2,
                        width: deviceSize.width * 0.2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/burger.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(width: deviceSize.height * 0.02),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'King Burger',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Metropolis-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xff030357),
                                size: 14,
                              ),
                              Text(
                                '4.9',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Metropolis-Regular',
                                  color: Color(0xff030357),
                                ),
                              ),
                              Text(
                                ' (124 rating)',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Metropolis-Regular',
                                  color: Colors.black26,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Burger WestWood',
                            style: TextStyle(
                                color: Colors.black26,
                                fontSize: 12,
                                fontFamily: 'Metropolis-Regular'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xff030357),
                                size: 14,
                              ),
                              Text(
                                ' No 03, 4th Lane, Newyork',
                                style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 12,
                                    fontFamily: 'Metropolis-Regular'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Column(
              children: List.generate(
                data.length,
                (index) => Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: deviceSize.width * 0.04,
                  ),
                  height: 50,
                  width: deviceSize.width,
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            data[index]['title'],
                          ),
                          Text(
                            data[index]['value'].toString(),
                          ),
                        ],
                      ),
                      index == data.length - 1
                          ? Container()
                          : Container(
                              margin: EdgeInsets.only(top: 19),
                              height: 1,
                              width: deviceSize.width,
                              color: Colors.grey,
                            ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Instructions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Metropolis-Bold',
                          fontSize: 13,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Color(0xff030357),
                            size: 16,
                          ),
                          Text(
                            'Add Note',
                            style: TextStyle(
                              fontFamily: 'Metropolis-Bold',
                              color: Color(0xff030357),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: deviceSize.height * 0.01,
                  ),
                  Divider(
                    color: Colors.grey[250],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub Total',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Metropolis-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$68',
                        style: TextStyle(
                          color: Color(0xff030357),
                          fontSize: 13,
                          fontFamily: 'Metropolis-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviceSize.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Cost',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Metropolis-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$2',
                        style: TextStyle(
                          color: Color(0xff030357),
                          fontSize: 13,
                          fontFamily: 'Metropolis-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviceSize.height * 0.01,
                  ),
                  Divider(
                    color: Colors.grey[250],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Metropolis-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$70',
                        style: TextStyle(
                          color: Color(0xff030357),
                          fontSize: deviceSize.height * 0.027,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviceSize.height * 0.04,
                  ),
                  component.getBotton(
                    context: context,
                    deviceSize: deviceSize,
                    title: 'CheckOut',
                    color: Color(0xff030357),
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckOutScreen(),
                        ),
                      );
                    },
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

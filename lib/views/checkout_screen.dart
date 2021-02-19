import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_raja_app/components/bottom_sheet.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/views/change_address_screen.dart';
import 'package:food_raja_app/views/home_screen.dart';

bool _cashOnDeliveryRadio = false;

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
final component = Component();

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    final bottomsheet = BottomSheetComponent();
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        actions: [
          Row(
            children: [
              Text(
                'Checkout',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: 'Metropolis-ExtraBold'),
              ),
              SizedBox(width: deviceSize.width * 0.65),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Address',
                  style: TextStyle(
                      fontFamily: 'Metropolis-Regular',
                      fontSize: 13,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: deviceSize.height * 0.015,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        '653 Nostrand Ave, Brooklyn, NY 11216',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Metropolis-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangeAddressScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Change',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Metropolis-Bold',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff030357),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.01,
          ),
          Divider(
            thickness: 12,
            color: Colors.grey[200],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment Method',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          fontFamily: 'Metropolis-Medium',
                          color: Colors.grey[400]),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Color(0xff030357),
                          size: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            bottomsheet.getBottomSheet(
                                deviceSize, _scaffoldKey.currentState);
                          },
                          child: Text(
                            'Add Card',
                            style: TextStyle(
                              color: Color(0xff030357),
                              fontSize: 13,
                              fontFamily: 'Metropolis-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: deviceSize.height * 0.02,
                ),
                Container(
                  height: 43,
                  width: deviceSize.width,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cash On Delivery',
                        style: TextStyle(
                            fontFamily: 'Metropolis-Regular', fontSize: 13),
                      ),
                      Radio(
                        value: _cashOnDeliveryRadio,
                        groupValue: _cashOnDeliveryRadio,
                        activeColor: Colors.red,
                        onChanged: (value) {
                          print(value);
                          _cashOnDeliveryRadio = value;
                          setState(() {});
                        },
                        toggleable: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: deviceSize.height * 0.02),
                Container(
                  height: 43,
                  width: deviceSize.width,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/visa_card.png'),
                            height: deviceSize.height * 0.03,
                            width: deviceSize.height * 0.04,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            '  **** **** **** 2378',
                            style: TextStyle(
                                fontFamily: 'Metropolis-Regular', fontSize: 13),
                          ),
                        ],
                      ),
                      Radio(
                        value: _cashOnDeliveryRadio,
                        groupValue: _cashOnDeliveryRadio,
                        activeColor: Colors.red,
                        onChanged: (value) {
                          print(value);
                          _cashOnDeliveryRadio = value;
                          setState(() {});
                        },
                        toggleable: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: deviceSize.height * 0.02),
                Container(
                  height: 43,
                  width: deviceSize.width,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/paypal_logo.png'),
                            height: deviceSize.height * 0.06,
                            width: deviceSize.height * 0.06,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'johndoe@email.com',
                            style: TextStyle(
                                fontFamily: 'Metropolis-Regular', fontSize: 13),
                          ),
                        ],
                      ),
                      Radio(
                        value: _cashOnDeliveryRadio,
                        groupValue: _cashOnDeliveryRadio,
                        activeColor: Colors.red,
                        onChanged: (value) {
                          print(value);
                          _cashOnDeliveryRadio = value;
                          setState(() {});
                        },
                        toggleable: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: deviceSize.height * 0.02,
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[200],
            thickness: 12,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub Total',
                      style: TextStyle(
                          fontSize: 13, fontFamily: 'Metropolis-Medium'),
                    ),
                    Text(
                      '\$68',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          fontFamily: 'Metropolis-Bold'),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceSize.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Cost',
                      style: TextStyle(
                          fontSize: 13, fontFamily: 'Metropolis-Medium'),
                    ),
                    Text(
                      '\$2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Metropolis-Bold',
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceSize.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discount',
                      style: TextStyle(
                          fontSize: 13, fontFamily: 'Metropolis-Regular'),
                    ),
                    Text(
                      '\$-4',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          fontFamily: 'Metropolis-Bold'),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceSize.height * 0.015,
                ),
                Divider(
                  color: Colors.grey[300],
                ),
                SizedBox(
                  height: deviceSize.height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Metropolis-Regular',
                      ),
                    ),
                    Text(
                      '\$66',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          fontFamily: 'Metropolis-Bold'),
                    ),
                  ],
                ),
                SizedBox(height: deviceSize.height * 0.04),
                component.getBotton(
                  context: context,
                  deviceSize: deviceSize,
                  title: 'Send Order',
                  color: Color(0xff030357),
                  onPress: () {
                    thankYouBottomSheet(
                      Size(deviceSize.width, deviceSize.height * 0.7),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  thankYouBottomSheet(Size deviceSize) {
    showModalBottomSheet(
      context: _scaffoldKey.currentContext,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
      builder: (context) {
        return Container(
          height: 650,
          padding: EdgeInsets.symmetric(
            vertical: 15,
          ),
          width: deviceSize.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: deviceSize.height * 0.05,
              ),
              SvgPicture.asset('assets/thank_you.svg'),
              SizedBox(
                height: deviceSize.height * 0.03,
              ),
              Text(
                'Thank You',
                style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'Metropolis-Bold',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4A4B4D)),
              ),
              Text(
                'for your order',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Metropolis-Bold',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4A4B4D),
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.03,
              ),
              Container(
                width: deviceSize.width * 0.6,
                child: Text(
                  'Your Order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your Order',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Metropolis-Regular',
                    color: Color(0xff4A4B4D),
                  ),
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.03,
              ),
              Container(
                height: 56,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: component.getBotton(
                  context: context,
                  deviceSize: deviceSize,
                  title: 'Track Order',
                  color: Color(0xff030357),
                  onPress: () {},
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  'Get Back To Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Metropolis-Bold',
                    color: Color(0xff030357),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

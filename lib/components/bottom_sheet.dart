import 'package:flutter/material.dart';
import 'package:food_raja_app/components/colors.dart';
import 'package:food_raja_app/components/components.dart';

class BottomSheetComponent {
  final component = Component();

  TextEditingController _cardNumberController = TextEditingController();

  TextEditingController _monthExpiryController = TextEditingController();

  TextEditingController _dayExpiryController = TextEditingController();

  TextEditingController _firstNameController = TextEditingController();

  TextEditingController _lastNameController = TextEditingController();

  TextEditingController _securityCodeController = TextEditingController();

  getBottomSheet(Size deviceSize, ScaffoldState currentState) {
    return showModalBottomSheet(
        context: currentState.context,
        isScrollControlled: true,
        builder: (context) => Container(
              height: deviceSize.height * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add Credit/Debit Card',
                            style:
                                TextStyle(fontSize: deviceSize.height * 0.022),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: deviceSize.height * 0.015,
                      ),
                      Divider(
                        color: Color(0xff707070),
                        thickness: 0.2,
                      ),
                      SizedBox(
                        height: deviceSize.height * 0.03,
                      ),
                      component.getTextField(deviceSize,
                          controller: _cardNumberController,
                          hintText: 'Card Number'),
                      SizedBox(
                        height: deviceSize.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Expiry',
                            style:
                                TextStyle(fontSize: deviceSize.height * 0.018),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                child: component.getTextField(
                                  deviceSize,
                                  hintText: 'MM',
                                  controller: _monthExpiryController,
                                ),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.04,
                              ),
                              Container(
                                width: 100,
                                child: component.getTextField(
                                  deviceSize,
                                  hintText: 'DD',
                                  controller: _dayExpiryController,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: deviceSize.width * 0.04,
                      ),
                      component.getTextField(
                        deviceSize,
                        hintText: 'Security Code',
                        controller: _securityCodeController,
                      ),
                      SizedBox(
                        height: deviceSize.width * 0.04,
                      ),
                      component.getTextField(
                        deviceSize,
                        hintText: 'First Name',
                        controller: _firstNameController,
                      ),
                      SizedBox(
                        height: deviceSize.width * 0.04,
                      ),
                      component.getTextField(
                        deviceSize,
                        hintText: 'Last Name',
                        controller: _lastNameController,
                      ),
                      SizedBox(
                        height: deviceSize.width * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: deviceSize.width * 0.5,
                            child: Text('You can remove this card at anytime '),
                          ),
                          Switch(
                            value: true,
                            onChanged: (value) {},
                            activeColor: themeBlueColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      component.getBotton(
                        context: context,
                        deviceSize: deviceSize,
                        title: 'Add Card',
                        color: Color(0xff030357),
                        onPress: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        elevation: 10);
  }
}

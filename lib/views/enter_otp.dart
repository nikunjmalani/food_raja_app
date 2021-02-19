import 'package:flutter/material.dart';
import 'package:food_raja_app/components/colors.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/views/intro_page_views.dart';

TextEditingController _otpOneController = TextEditingController();
TextEditingController _otpTwoController = TextEditingController();
TextEditingController _otpThreeController = TextEditingController();
TextEditingController _otpFourController = TextEditingController();

class EnterOtp extends StatefulWidget {
  @override
  _EnterOtpState createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
  FocusNode focusNode1 = FocusNode();

  FocusNode focusNode2 = FocusNode();

  FocusNode focusNode3 = FocusNode();

  FocusNode focusNode4 = FocusNode();
  String otp = '';
  @override
  Widget build(BuildContext context) {
    final component = Component();
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(deviceSize.width * 0.04),
          child: Column(
            children: [
              SizedBox(height: 60),
              Text(
                'We have sent an OTP to Your Mobile',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontFamily: 'Roboto-Regular'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Please check your mobile number XXX*****XX continue to reset your password',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: greyTextColor,
                    fontSize: 14,
                    fontFamily: 'Metropolis-Medium'),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  getContainer(
                      deviceSize, focusNode1, context, _otpOneController),
                  getContainer(
                      deviceSize, focusNode2, context, _otpTwoController),
                  getContainer(
                      deviceSize, focusNode3, context, _otpThreeController),
                  getContainer(
                      deviceSize, focusNode4, context, _otpFourController),
                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.055,
              ),
              AbsorbPointer(
                absorbing: otp.length >= 4 ? false : true,
                child: component.getBotton(
                  context: context,
                  deviceSize: deviceSize,
                  title: 'Next',
                  color: otp.length >= 4 ? Color(0xff030357) : Colors.grey,
                  onPress: () {
                    print(
                        '${_otpOneController.text + _otpTwoController.text + _otpThreeController.text + _otpFourController.text}');
                    print('otp : $otp');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IntroPageViews(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Did\'t Receive? ',
                    style: TextStyle(
                      color: greyTextColor,
                      fontSize: 15,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Click Here',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff030357),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getContainer(Size size, FocusNode focusNode, BuildContext context,
      TextEditingController controller) {
    return Container(
      height: 57,
      width: 57,
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 4, left: 25),
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            onChanged: (value) {
              if (value.length == 1) {
                focusNode.nextFocus();
              } else if (value.length < 1) {
                focusNode.previousFocus();
              }
              if (_otpOneController.text != null ||
                  _otpOneController.text != "" &&
                      _otpTwoController.text != null ||
                  _otpTwoController.text != "" &&
                      _otpThreeController.text != null ||
                  _otpThreeController.text != "" &&
                      _otpFourController.text != null ||
                  _otpFourController.text != "") {
                setState(() {
                  otp =
                      '${_otpOneController.text + _otpTwoController.text + _otpThreeController.text + _otpFourController.text}';
                });
              }
            },
            maxLines: 1,
            maxLength: 1,
            maxLengthEnforced: true,
            decoration: InputDecoration(
              counter: SizedBox.shrink(),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

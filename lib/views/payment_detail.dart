import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_raja_app/components/bottom_sheet.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/widget/appbar.dart';

bool saveCard = false;

class PaymentDetail extends StatefulWidget {
  @override
  _PaymentDetailState createState() => _PaymentDetailState();
}

class _PaymentDetailState extends State<PaymentDetail> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final bottomsheet = BottomSheetComponent();
  final component = Component();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar:
          appBar(context: context, title: 'Payment Details', isBackIcon: true),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: deviceSize.height * 0.015,
            ),
            Text(
              'Customize your payment method',
              style: TextStyle(
                  fontSize: deviceSize.height * 0.02,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.grey[350],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 165,
              width: deviceSize.width,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[350],
                    spreadRadius: 0.5,
                    blurRadius: 20,
                    offset: Offset(4, 20),
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Cash/Card on delivery'),
                        SvgPicture.asset('assets/true_icon.svg'),
                      ],
                    ),
                    Divider(
                      color: Colors.grey[350],
                    ),
                    SizedBox(
                      height: deviceSize.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: deviceSize.width * 0.10,
                              width: deviceSize.width * 0.10,
                              child: Image(
                                image: AssetImage('assets/visa_card.png'),
                              ),
                            ),
                            SizedBox(width: 20),
                            Text('**** ****'),
                          ],
                        ),
                        Container(
                          height: deviceSize.height * 0.03,
                          width: deviceSize.width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: Color(0xff030357),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Debit Card',
                              style: TextStyle(
                                color: Color(0xff030357),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey[350],
                    ),
                    SizedBox(height: deviceSize.height * 0.010),
                    // Adobe XD layer: 'Profile text slider…' (text)
                    Text(
                      'Other Methods',
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 10,
                        color: const Color(0xff4a4b4d),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.08,
            ),
            component.getBotton(
              context: context,
              deviceSize: deviceSize,
              title: 'Add Another Credit/Debit Card',
              color: Color(0xff030357),
              onPress: () {
                bottomsheet.getBottomSheet(
                    deviceSize, _scaffoldKey.currentState);
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_raja_app/components/colors.dart';

class LatestOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: deviceSize.width * 0.48,
                child: Text(
                  'Find discounts, Offers special meals and more!',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: 'Metropolis-Medium',
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: deviceSize.width * 0.45,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xff030357),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Check Offer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontFamily: 'Metropolis-SemiBold',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    height: 260,
                    width: deviceSize.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 10,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          child: Image(
                            image: AssetImage('assets/burger.jpg'),
                            width: deviceSize.width,
                            height: 193,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Café de Noires',
                                style: TextStyle(
                                    color: titleTextColor,
                                    fontFamily: 'Metropolis-Bold',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: themeBlueColor,
                                    size: 14,
                                  ),
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                        color: themeBlueColor,
                                        fontSize: 12,
                                        fontFamily: 'Metropolis-Regular'),
                                  ),
                                  Text(
                                    ' (124 rating) Cafe',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Metropolis-Regular'),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 2,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Western Food',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontFamily: 'Metropolis-Regular'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

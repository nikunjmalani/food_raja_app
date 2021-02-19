import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_raja_app/components/colors.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  double rating;
  bool isDropDownOpen = false;

  GlobalKey _globalKey1 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/burger.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:
                              Icon(Icons.arrow_back_ios, color: Colors.white)),
                      Icon(Icons.shopping_cart, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: deviceSize.height * 0.26,
              child: Container(
                width: deviceSize.width,
                height: deviceSize.height * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 25, left: 15, right: 15),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tandoori Chicken Pizza',
                          style: TextStyle(fontSize: 22),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                RatingBar(
                                  itemCount: 5,
                                  direction: Axis.horizontal,
                                  onRatingUpdate: (value) {
                                    setState(() {
                                      rating = value;
                                    });
                                  },
                                  allowHalfRating: true,
                                  glow: false,
                                  itemSize: 20,
                                  ratingWidget: RatingWidget(
                                    full: Icon(Icons.star,
                                        color: Colors.deepOrange),
                                    empty: Icon(Icons.star_border,
                                        color: Colors.deepOrange),
                                    half: Icon(Icons.star_half_outlined,
                                        color: Colors.deepOrange),
                                  ),
                                ),
                                Text(
                                  '${rating ?? 0} Star Rating',
                                  style: TextStyle(color: Colors.deepOrange),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Rs.760',
                                  style: TextStyle(
                                    fontSize: 31,
                                    fontWeight: FontWeight.bold,
                                    color: titleTextColor,
                                  ),
                                ),
                                Text('/per portion',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Description',
                          style: TextStyle(
                              fontFamily: 'Metropolis-Bold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontFamily: 'Metropolis-Regular'),
                        ),
                        SizedBox(height: 20),
                        Divider(
                          color: Color(0xff8A8A8A),
                          thickness: 0.2,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Customize Your Order',
                          style: TextStyle(
                              fontFamily: 'Metropolis-Bold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '- Select the size of portion -',
                                style: TextStyle(
                                    color: titleTextColor,
                                    fontSize: 14,
                                    fontFamily: 'Metropolis-Medium'),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.25,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isDropDownOpen = !isDropDownOpen;
                                  });
                                },
                                child: SvgPicture.asset(
                                  'assets/arrow_down.svg',
                                  color: Color(0xff828282),
                                  width: 6,
                                  height: 11,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: deviceSize.height * 0.06,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '- Select the ingredients -',
                                style: TextStyle(color: titleTextColor),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.30,
                              ),
                              SvgPicture.asset(
                                'assets/arrow_down.svg',
                                color: Color(0xff828282),
                                width: 6,
                                height: 11,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Number of Portion',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: 'Metropolis-Bold'),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: deviceSize.height * 0.035,
                                  width: deviceSize.height * 0.06,
                                  decoration: BoxDecoration(
                                    color: Color(0xff030357),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                    height: deviceSize.height * 0.035,
                                    width: deviceSize.height * 0.06,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        border:
                                            Border.all(color: themeBlueColor)),
                                    child: Center(child: Text('2'))),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: deviceSize.height * 0.035,
                                  width: deviceSize.height * 0.06,
                                  decoration: BoxDecoration(
                                    color: Color(0xff030357),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: deviceSize.height * 0.03,
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                right: deviceSize.width * 0.15,
                                left: deviceSize.width * 0.12,
                              ),
                              height: deviceSize.height * 0.15,
                              width: deviceSize.width * 0.65,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[300],
                                      spreadRadius: 1,
                                      blurRadius: 5),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: deviceSize.height * 0.02,
                                  ),
                                  Text(
                                    'Total Price',
                                    style: TextStyle(
                                        fontFamily: 'Metropolis-Medium'),
                                  ),
                                  SizedBox(
                                    height: deviceSize.height * 0.01,
                                  ),
                                  Text(
                                    'LKR 1500',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Metropolis-Bold',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: deviceSize.height * 0.01,
                                  ),
                                  Container(
                                    width: deviceSize.width * 0.35,
                                    height: deviceSize.height * 0.04,
                                    child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xff030357),
                                      child: Row(children: [
                                        SvgPicture.asset(
                                            'assets/cart_icon.svg'),
                                        SizedBox(width: 9),
                                        Text(
                                          'Add To Cart',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily:
                                                  'Metropolis-SemiBold'),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: deviceSize.width * 0.08,
                              top: deviceSize.height * 0.045,
                              child: Container(
                                height: 50,
                                width: deviceSize.width * 0.14,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[300],
                                          blurRadius: 5,
                                          spreadRadius: 1)
                                    ]),
                                child: Center(
                                  child: Icon(
                                    Icons.shopping_cart,
                                    size: 20,
                                    color: Color(0xff030357),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: deviceSize.height * 0.03,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: deviceSize.height * 0.235,
              right: deviceSize.width * 0.065,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/favorite_logo.svg',
                  ),
                  radius: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
